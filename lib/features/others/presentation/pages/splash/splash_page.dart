import "dart:async";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_clean_architecture/constants/constants.dart";
import "package:flutter_clean_architecture/constants/image_constants.dart";
import "package:flutter_clean_architecture/core/theme/themes.dart";
import "package:flutter_clean_architecture/core/widgets/bottom_sheet/custom_bottom_sheet.dart";
import "package:flutter_clean_architecture/core/widgets/bottom_sheet/update_app_sheet.dart";
import "package:flutter_clean_architecture/router/app_routes.dart";
import "package:flutter_clean_architecture/services/remote_config_service.dart";
import "package:go_router/go_router.dart";
import "package:url_launcher/url_launcher.dart";

part "mixins/splash_mixin.dart";

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with SplashMixin {
  @override
  Widget build(BuildContext context) =>
      const AnnotatedRegion<SystemUiOverlayStyle>(
        value: systemUiOverlayStyle,
        child: Scaffold(
          body: Stack(
          children: <Widget>[
            Center(
              child: _AnimatedInstagramLogo(),
            ),
            Positioned(
              bottom: 40,
              left: 0,
              right: 0,
              child: _FromMeta(),
            ),
          ],
        ),
        ),
      );
}

class _AnimatedInstagramLogo extends StatefulWidget {
  const _AnimatedInstagramLogo();

  @override
  State<_AnimatedInstagramLogo> createState() => _AnimatedInstagramLogoState();
}

class _AnimatedInstagramLogoState extends State<_AnimatedInstagramLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
  }

  @override
  Widget build(BuildContext context) => FadeTransition(
        opacity: _animation,
        child: Image.asset(
          Images.instagramSplash,
          width: 100,
          height: 100,
        ),
      );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}


class _FromMeta extends StatelessWidget {
  const _FromMeta();

  @override
  Widget build(BuildContext context) => Column(
      children: [
        Text(
          "from",
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 4),
        Image.asset(
          Images.metaLogo,
          height: 20,
        ),
      ],
    );
}
