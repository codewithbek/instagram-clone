import "package:flutter/material.dart";
import "package:flutter_clean_architecture/constants/app_icons.dart";
import "package:flutter_clean_architecture/constants/image_constants.dart";
import "package:flutter_clean_architecture/core/extension/extension.dart";

import "package:flutter_clean_architecture/core/widgets/animations/carousel_slider.dart";
import "package:flutter_clean_architecture/core/widgets/painter/logo_painter.dart";
import "package:flutter_clean_architecture/core/widgets/shape/ig_stories_avatar.dart";
import "package:flutter_clean_architecture/features/home/presentation/pages/widgets/ig_post_item.dart";
import "package:flutter_svg/svg.dart";
import "package:pull_to_refresh/pull_to_refresh.dart";

part "mixin/home_mixin.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with HomeMixin {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(
              scrollbars: false,
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
            ),
            child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (
                BuildContext context,
                bool innerBoxIsScrolled,
              ) =>
                  <Widget>[
                SliverAppBar(
                  floating: true,
                  snap: true,
                  centerTitle: false,
                  title: InstaLogo(
                    color: context.color.blackToWhite,
                  ),
                  actions: <Widget>[
                    IconButton(
                      icon: SvgPicture.asset(AppIcons.like),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: SvgPicture.asset(AppIcons.messanger),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
              body: SmartRefresher(
                enablePullUp: true,
                footer: const ClassicFooter(
                  loadStyle: LoadStyle.ShowWhenLoading,
                ),
                header: const ClassicHeader(),
                controller: _refreshController,
                onRefresh: _onRefresh,
                onLoading: _onLoading,
                child: CustomScrollView(
                  slivers: <Widget>[
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 120,
                        child: ListView.separated(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          scrollDirection: Axis.horizontal,
                          itemCount: stories.length + 1,
                          separatorBuilder: (_, __) => const SizedBox(width: 4),
                          itemBuilder: (
                            _,
                            int index,
                          ) {
                            if (index == 0) {
                              return const StoryAvatar(
                                imageUrl: Images.goat,
                                username: "You",
                                isMe: true,
                              );
                            }

                            final Story story = stories[index - 1];
                            return StoryAvatar(
                              imageUrl: story.imageUrl,
                              username: story.username,
                              isSeen: story.isSeen,
                              isCloseFriend: story.isCloseFriend,
                            );
                          },
                        ),
                      ),
                    ),
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) =>
                            IGPostItem(post: posts[index]),
                        childCount: posts.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
