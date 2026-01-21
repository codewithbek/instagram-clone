import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
// ignore: depend_on_referenced_packages, implementation_imports
import "package:flutter_clean_architecture/constants/app_icons.dart";
import "package:flutter_clean_architecture/core/extension/extension.dart";
import "package:flutter_clean_architecture/core/utils/utils.dart";
import "package:flutter_clean_architecture/core/widgets/custom_cached_network_image.dart";
import "package:flutter_clean_architecture/features/home/presentation/pages/widgets/like_animation.dart";
import "package:flutter_svg/svg.dart";
import "package:like_button/like_button.dart";

class IGPostItem extends StatefulWidget {
  const IGPostItem({super.key, required this.post});
  final IGPost post;

  @override
  State<IGPostItem> createState() => _IGPostItemState();
}

class _IGPostItemState extends State<IGPostItem> {
  int _currentPage = 0;
  bool _isLiked = false;
  bool _showLikeAnimation = false;

  Future<void> _onDoubleTap() async {
    setState(() {
      _isLiked = true;
      _showLikeAnimation = true;
    });
  }

  void _onLikeButtonPressed() {
    setState(() => _isLiked = !_isLiked);
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('build $_showLikeAnimation');
    final IGPost post = widget.post;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12, right: 12, bottom: 12),
          child: Row(
            children: <Widget>[
              if (post.collaborators.isNotEmpty)
                SizedBox(
                  width: 50,
                  height: 36,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 12,
                        bottom: 10,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: const Color(0xFF272727),
                          child: CircleAvatar(
                            radius: 12.5,
                            backgroundImage: CachedNetworkImageProvider(
                              post.collaborators[0],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 16, // Overlap slightly
                        left: 0,
                        top: 10,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: const Color(0xFF272727),
                          child: CircleAvatar(
                            radius: 12.5,
                            backgroundImage: CachedNetworkImageProvider(
                              post.collaborators[1],
                            ),
                          ),
                          
                        ),
                      ),
                    ],
                  ),
                ),
              if (post.collaborators.isEmpty)
                CircleAvatar(
                  radius: 13.5,
                  backgroundColor: const Color(0xFF272727),
                  child: CircleAvatar(
                    radius: 12.5,
                    backgroundImage: CachedNetworkImageProvider(
                      post.userImage,
                    ),
                  ),
                ),
              if (post.collaborators.isEmpty) AppUtils.kGap4,

              // Username Text
              Expanded(
                child: Row(
                  children: [
                    Text(
                      post.collaborators.isNotEmpty
                          // ignore: lines_longer_than_80_chars
                          ? "${post.username} and ${post.collaboratorNames.join(" and ")}"
                          : post.username,
                      style: context.theme.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 14),
                      overflow: TextOverflow.ellipsis,
                    ),
                    AppUtils.kGap2,
                    SvgPicture.asset(AppIcons.verifiedBadge),
                  ],
                ),
              ),

              const Icon(
                Icons.more_vert,
                size: 16,
              ),
            ],
          ),
        ),

        // // Header
        // ListTile(
        //   leading: CircleAvatar(
        //     backgroundImage: CachedNetworkImageProvider(post.userImage),
        //     backgroundColor: Colors.transparent,
        //   ),
        //   title: Row(
        //     children: <Widget>[
        //       Text(post.username),
        //       AppUtils.kGap2,
        //       SvgPicture.asset(AppIcons.verifiedBadge),
        //       ...post.collaborators.map(
        //         (String url) => Padding(
        //           padding: const EdgeInsets.only(left: 4),
        //           child: CircleAvatar(
        //             backgroundImage: CachedNetworkImageProvider(url),
        //             radius: 10,
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        //   trailing: const Icon(Icons.more_vert),
        // ),

        // Post Images with Pagination
        GestureDetector(
          onDoubleTap: _onDoubleTap,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                  itemCount: post.postImages.length,
                  onPageChanged: (int index) =>
                      setState(() => _currentPage = index),
                  itemBuilder: (BuildContext context, int index) =>
                      CustomCachedNetworkImage(
                    key: ObjectKey(index),
                    imageUrl: post.postImages[index],
                    fit: BoxFit.cover,
                    // height:  MediaQuery.of(context).size.width,
                    // width:  MediaQuery.of(context).size.width,
                    progressIndicatorBuilder: (
                      BuildContext context,
                      String url,
                      DownloadProgress progress,
                    ) =>
                        const Center(
                            child: CircularProgressIndicator.adaptive()),
                  ),
                ),
              ),
              if (_showLikeAnimation)
                LikeAnimation(
                  isAnimating: _showLikeAnimation,
                  duration: const Duration(milliseconds: 500),
                  onEnd: () => setState(() => _showLikeAnimation = false),
                  child: const Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 100,
                  ),
                ),
            ],
          ),
        ),
        if (post.postImages.length > 1)
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: always_specify_types
              children: List.generate(
                post.postImages.length,
                (int index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: _currentPage == index ? 8 : 6,
                  height: _currentPage == index ? 8 : 6,
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Colors.blue : Colors.grey,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
        // Action Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Row(
            children: <Widget>[
              LikeButton(
                size: 28,
                onTap: (bool isLiked) {
                  setState(() {
                    _isLiked = !isLiked;
                  });
                  return Future<bool>.value(!isLiked);
                },
                isLiked: _isLiked,
                likeCount: post.likes,
                padding: EdgeInsets.zero,
                // bubblesSize:  12,
                // circleSize: 28,
                countBuilder: (int? likeCount, bool isLiked, String text) =>
                    Text(
                  text,
                  style: context.theme.textTheme.bodyMedium!.copyWith(
                    fontSize: 12,
                  ),
                ),
                circleColor: const CircleColor(
                  start: Colors.transparent,
                  end: Colors.transparent,
                ),
                bubblesColor: const BubblesColor(
                  dotPrimaryColor: Colors.transparent,
                  dotSecondaryColor: Colors.transparent,
                ),
                likeBuilder: (bool isLiked) => SvgPicture.asset(
                  isLiked ? AppIcons.likeHeart : AppIcons.like,
                ),
              ),
              Text(
                "K",
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 12),
              SvgPicture.asset(AppIcons.comment),
              const SizedBox(width: 4),
              Text(
                "${post.comments}K",
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                ),
              ),
              const SizedBox(width: 12),
              SvgPicture.asset(AppIcons.share),
              const SizedBox(width: 4),
              Text(
                "${post.shares}K",
                style: context.theme.textTheme.bodyMedium!.copyWith(
                  fontSize: 12,
                ),
              ),
              const Spacer(),
              SvgPicture.asset(AppIcons.bookmark),
            ],
          ),
        ),

        // // Likes

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 60, // Enough for two overlapping avatars
                height: 36,
                child: Stack(
                  children: <Widget>[
                    if (post.likers.isNotEmpty)
                      Positioned(
                        left: 32,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: const Color(0xFF272727),
                          child: CircleAvatar(
                            radius: 12.5,
                            backgroundImage:
                                CachedNetworkImageProvider(post.likers[2]),
                          ),
                        ),
                      ),
                    if (post.likers.length > 1)
                      Positioned(
                        left: 18,
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: const Color(0xFF272727),
                          child: CircleAvatar(
                            radius: 12.5,
                            backgroundImage: CachedNetworkImageProvider(
                              post.likers[3],
                            ),
                          ),
                        ),
                      ),
                    if (post.likers.length > 2)
                      Positioned(
                        child: CircleAvatar(
                          radius: 13.5,
                          backgroundColor: const Color(0xFF272727),
                          child: CircleAvatar(
                            radius: 12.5,
                            backgroundImage: CachedNetworkImageProvider(
                              post.likers[4],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              RichText(
                text: TextSpan(
                  style: context.theme.textTheme.bodyMedium,
                  children: const <InlineSpan>[
                    TextSpan(
                      text: "Liked by ",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    TextSpan(
                      text: "messi",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                    ),
                    TextSpan(
                      text: " and others",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Caption
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              style: context.theme.textTheme.bodyMedium,
              children: <InlineSpan>[
                TextSpan(
                  text: "${post.username} ",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: post.caption,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),

        // Time
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
          child: Text(
            post.timeAgo,
            style: context.theme.textTheme.labelSmall!.copyWith(
              color: Colors.white.withValues(alpha: 0.8),
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),

        const SizedBox(height: 16),
      ],
    );
  }
}

class IGPost {
  const IGPost({
    required this.username,
    required this.userImage,
    required this.postImages,
    required this.caption,
    required this.timeAgo,
    this.collaborators = const <String>[],
    this.collaboratorNames = const <String>[],
    this.likers = const <String>[],
    this.isLiked = false,
    this.likes = 0,
    this.comments = 0,
    this.shares = 0,
  });

  final String username;
  final String userImage;
  final List<String> postImages;
  final String caption;
  final String timeAgo;
  final bool isLiked;
  final int likes;
  final int comments;
  final int shares;
  final List<String> collaborators; // New
  final List<String> likers; // New
  final List<String> collaboratorNames; // usernames
}
