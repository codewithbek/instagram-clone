import "dart:async";

import "package:flutter/material.dart";

class LikeAnimation extends StatefulWidget {
  const LikeAnimation({
    super.key,
    required this.isAnimating,
    required this.onEnd,
    this.duration = const Duration(milliseconds: 200),
    required this.child,
    this.isSmallLike = false,
  });
  final bool isAnimating;
  final VoidCallback onEnd;
  final Duration duration;
  final Widget child;
  final bool isSmallLike;

  @override
  State<LikeAnimation> createState() => _LikeAnimationState();
}

class _LikeAnimationState extends State<LikeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    // _controller = AnimationController(
    //   duration: Duration(milliseconds: widget.duration.inMilliseconds ~/ 2),
    //   vsync: this,
    // );
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: widget.duration.inMilliseconds ~/ 2),
    );

    _scaleAnimation = Tween<double>(begin: 1, end: 1.4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutBack,
        reverseCurve: Curves.easeIn,
      ),
    );

    // _scaleAnimation = Tween<double>(begin: 0.25, end: 1.4).animate(
    //   CurvedAnimation(
    //     parent: _controller,
    //     curve: Curves.easeOutBack,
    //     reverseCurve: Curves.easeIn,
    //   ),
    // );
  }

  @override
  void didUpdateWidget(LikeAnimation oldWidget) {
    if (widget.isAnimating) {
      // ignore: discarded_futures
      doAnimation();
    }
  }

  Future<void> doAnimation() async {
    if (widget.isAnimating) {
      await _controller.forward();
      await _controller.reverse();
      widget.onEnd();
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => IgnorePointer(
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (_, __) => Opacity(
              opacity: widget.isAnimating ? 1 : 0,
              child: Transform.scale(
                scale: _scaleAnimation.value,
                child: widget.child,
              ),
            ),
          ),
        ),
      );
}
