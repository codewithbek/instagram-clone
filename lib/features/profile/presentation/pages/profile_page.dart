import "dart:math";

import "package:flutter/material.dart";
import "package:flutter_clean_architecture/constants/app_icons.dart";
import "package:flutter_clean_architecture/constants/image_constants.dart";
import "package:flutter_clean_architecture/core/extension/extension.dart";
import "package:flutter_clean_architecture/core/utils/utils.dart";
import "package:flutter_clean_architecture/core/widgets/shape/ig_stories_avatar.dart";
import "package:flutter_clean_architecture/features/profile/presentation/pages/widgets/profile_info_widget.dart";
import "package:flutter_clean_architecture/features/profile/presentation/pages/widgets/profile_item_widget.dart";
import "package:flutter_clean_architecture/router/app_routes.dart";
import "package:flutter_svg/svg.dart";
import "package:go_router/go_router.dart";
import "package:pull_to_refresh/pull_to_refresh.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<String> items = <String>["1", "2", "3", "4", "5", "6", "7", "8"];
  final RefreshController _refreshController = RefreshController();

  Future<void> _onRefresh() async {
    // monitor network fetch
    await Future<void>.delayed(const Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  Future<void> _onLoading() async {
    // monitor network fetch
    await Future<void>.delayed(const Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    items.add((items.length + 1).toString());
    if (mounted) {
      setState(() {});
    }
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Row(
            children: [
              Text(
                "cristiano",
                style: context.theme.textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              AppUtils.kGap2,
              SvgPicture.asset(AppIcons.verifiedBadge),
              Container(
                padding: AppUtils.kPaddingAll4,
                margin: AppUtils.kPaddingHor4,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colorScheme.error,
                ),
                child: Text("10+", style: context.theme.textTheme.labelSmall),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(AppIcons.add),
              onPressed: () {},
            ),
            IconButton(
              icon: SvgPicture.asset(AppIcons.burgerMenu),
              onPressed: () {},
            ),
          ],
        ),
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
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Profile Header
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const IGStoryAvatar(imageUrl: Images.goat),
                          AppUtils.kGap24,
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Cristiano Ronaldo",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                ),
                                AppUtils.kGap12,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    _buildStat("1126", "posts", context),
                                    _buildStat("658M", "followers", context),
                                    _buildStat("601", "following", context),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      AppUtils.kGap12,

                      // Bio
                      Text(
                        "Sportsperson",
                        style: context.theme.textTheme.titleSmall!.copyWith(
                          color: context.colorScheme.onBackground,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "SIUUUbscribe to my Youtube Channel!",
                        style: context.theme.textTheme.bodyMedium!.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      AppUtils.kGap8,

                      // Link
                      const ProfileLinkRow(url: "avacr7.com/en"),
                      AppUtils.kGap12,

                      // Action Buttons
                      Row(
                        children: [
                          ProfileActionButton(
                            label: "Edit profile",
                            onPressed: () {},
                          ),
                          AppUtils.kGap12,
                          ProfileActionButton(
                            label: "Share profile",
                            onPressed: () {},
                          ),
                          AppUtils.kGap12,
                          const _FrameButton(),
                        ],
                      ),
                      AppUtils.kGap24,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}

Widget _buildStat(String count, String label, BuildContext context) => Column(
      children: <Widget>[
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
        Text(
          label,
          style: context.theme.textTheme.bodySmall,
        ),
      ],
    );

class ProfileActionButton extends StatelessWidget {
  const ProfileActionButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) => Expanded(
        flex: 2,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFEFEFEF).withOpacity(0.2),
            minimumSize: const Size.fromHeight(30),
          ),
          onPressed: onPressed,
          child: Text(
            label,
            style: context.theme.textTheme.bodySmall!.copyWith(fontSize: 13),
          ),
        ),
      );
}

class ProfileLinkRow extends StatelessWidget {
  const ProfileLinkRow({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) => Row(
        children: [
          Transform.rotate(
            angle: 4 * pi / 6,
            child: Icon(
              Icons.link,
              color: context.colorScheme.primary,
              size: 16,
            ),
          ),
          AppUtils.kGap4,
          Text(
            url,
            style: context.theme.textTheme.bodySmall!.copyWith(
              color: context.colorScheme.primary,
              fontSize: 14,
            ),
          ),
        ],
      );
}

class _FrameButton extends StatelessWidget {
  const _FrameButton();

  @override
  Widget build(BuildContext context) => Container(
        padding: AppUtils.kPaddingAll8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFEFEFEF).withValues(alpha: .2),
        ),
        child: SvgPicture.asset(AppIcons.frame6),
      );
}
