import "package:cached_network_image/cached_network_image.dart";
import "package:flutter/material.dart";
import "package:flutter_clean_architecture/constants/app_icons.dart";
import "package:flutter_clean_architecture/constants/image_constants.dart";
import "package:flutter_clean_architecture/core/extension/extension.dart";
import "package:flutter_clean_architecture/core/widgets/bottom_navigation/bottom_indicator_bar.dart";
import "package:flutter_svg/svg.dart";
import "package:go_router/go_router.dart";

class MainPage extends StatelessWidget {
  const MainPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: navigationShell.currentIndex != 0,
        onPopInvoked: (bool v) => navigationShell.goBranch(0),
        child: Scaffold(
          body: navigationShell,
          bottomNavigationBar: BottomIndicatorBar(
            child: BottomNavigationBar(
              currentIndex: navigationShell.currentIndex,
            onTap: (int index) => changeTap(index, context),
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.home,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    AppIcons.homeSelected,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.search,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    AppIcons.seachSelected,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.add,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    AppIcons.add,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    AppIcons.reels,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  activeIcon: SvgPicture.asset(
                    AppIcons.reels,
                    colorFilter: ColorFilter.mode(
                      context.color.blackToWhite,
                      BlendMode.srcIn,
                    ),
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon:  Column(
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 15,
                        backgroundImage:
                            CachedNetworkImageProvider(Images.goat),
                        backgroundColor: Colors.transparent,
                      ),
                      Container(
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: context.colorScheme.error,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  activeIcon: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: context.color.blackToWhite,
                        width: 2,
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 14,
                      backgroundImage:
                          CachedNetworkImageProvider(Images.goat),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                  label: "",
                ),
              ],
            ),
          ),
        ),
      );

  void changeTap(
    int index,
    BuildContext context,
  ) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
