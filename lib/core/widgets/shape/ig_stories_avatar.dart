import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:flutter_clean_architecture/core/extension/extension.dart";
import "package:flutter_clean_architecture/features/home/presentation/pages/story_view/story_view_page.dart";
import "package:zoom_tap_animation/zoom_tap_animation.dart";

class IGStoryAvatar extends StatelessWidget {
  const IGStoryAvatar({
    super.key,
    required this.imageUrl,
    this.size = 80,
    this.isSeen = false,
  });

  final String imageUrl;
  final double size;
  final bool isSeen;

  @override
  Widget build(BuildContext context) {
    final List<Color> gradientColors = isSeen
        ? <Color>[
            const Color(0xFF1A1A1A),
            const Color(0xFF121212),
            const Color(0xFF101010),
          ]
        : <Color>[
            const Color(0xFFFECD00),
            const Color(0xFFC913B9),
            const Color(0xFFF9373F),
          ];

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: gradientColors,
          stops: const <double>[0, 0.5, 1],
        ),
      ),
      child: CircleAvatar(
        radius: size / 2,
        backgroundColor: Colors.black,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.cover,
            width: size - 10,
            height: size - 10,
            placeholder: (BuildContext context, String url) => Container(
              color: Colors.grey.shade300,
            ),
            errorWidget: (BuildContext context, String url, Object error) =>
                Icon(Icons.error, size: size / 2),
          ),
        ),
      ),
    );
  }
}

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({
    super.key,
    required this.imageUrl,
    required this.username,
    this.isSeen = false,
    this.isMe = false,
    this.isCloseFriend = false,
  });

  final String imageUrl;
  final String username;
  final bool isSeen;
  final bool isMe;
  final bool isCloseFriend;

  @override
  Widget build(BuildContext context) {
    final List<Color> gradientColors = isCloseFriend
        ? <Color>[
            const Color(0xFF00BF1F),
            const Color(0xFF00BF1F),
            const Color(0xFF00BF1F),
          ]
        : isSeen
            ? <Color>[
                const Color(0xFF101010),
                const Color(0xFF262626),
                const Color(0xFF272727),
              ]
            : <Color>[
                const Color(0xFFC913B9),
                const Color(0xFFF9373F),
                const Color(0xFFFECD00),
              ];

    return ZoomTapAnimation(
      onTap: () async {
        await Navigator.of(context).push(PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 250),
          pageBuilder: (_, Animation<double> animation, __) => StoryViewPage(
            userStory: UserStory(
              username: username,
              stories: [
                StoryItem(
                  url: imageUrl,
                  duration: const Duration(seconds: 10),
                ),
              ],
            ),
          ),
          transitionsBuilder: (_, animation, __, child) {
            final curvedAnimation =
                CurvedAnimation(parent: animation, curve: Curves.easeInOut);
            return FadeTransition(
              opacity: curvedAnimation,
              child: ScaleTransition(
                scale: curvedAnimation,
                child: child,
              ),
            );
          },
        ));
      },
      onLongTap: () {},
      enableLongTapRepeatEvent: true,
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: gradientColors,
                      stops: const <double>[0, 0.5, 1],
                      begin: Alignment.topRight,
                      end: Alignment.bottomCenter),
                ),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: Colors.black,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedNetworkImage(
                      imageUrl: imageUrl,
                      fit: BoxFit.cover,
                      width: 60,
                      height: 60,
                      placeholder: (BuildContext context, String url) =>
                          Container(
                        color: Colors.grey.shade300,
                      ),
                      errorWidget:
                          (BuildContext context, String url, Object error) =>
                              const Icon(Icons.error, size: 30),
                    ),
                  ),
                ),
              ),
              if (isMe)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add, size: 14, color: Colors.black),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 80,
            child: Center(
              child: Text(
                isMe ? "Your Story" : username,
                style: context.theme.textTheme.labelSmall,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Story {
  Story({
    required this.imageUrl,
    required this.username,
    this.isSeen = false,
    this.isCloseFriend = false,
  });
  final String imageUrl;
  final String username;
  final bool isSeen;
  final bool isCloseFriend;
}
