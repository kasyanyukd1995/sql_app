import 'package:flutter/material.dart';

class RotateAnimationTransition extends StatefulWidget {
  final Widget child;
  final bool isPaused;

  const RotateAnimationTransition({
    required this.child,
    this.isPaused = false,
    super.key,
  });

  @override
  RotateAnimationTransitionState createState() => RotateAnimationTransitionState();
}

class RotateAnimationTransitionState extends State<RotateAnimationTransition>
    with TickerProviderStateMixin {
  late AnimationController _rotateController;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _rotateController = AnimationController(
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
      vsync: this,
    );

    _rotateAnimation = CurvedAnimation(
      parent: _rotateController,
      curve: Curves.linear,
    );

    _runAnimation();
  }

  void _runAnimation() {
    _rotateController.repeat(
      min: 0,
      max: 1,
      period: const Duration(seconds: 3),
    );
  }

  @override
  void didUpdateWidget(covariant RotateAnimationTransition oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isPaused != widget.isPaused) {
      if (widget.isPaused) {
        _rotateController.stop();
      } else if (!_rotateController.isAnimating) {
        _runAnimation();
      }
    }
  }

  @override
  void dispose() {
    _rotateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _rotateAnimation,
      child: widget.child,
    );
  }
}
