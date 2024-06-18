import 'package:flutter/material.dart';

class DecreaseIncreaseAnimationTransition extends StatefulWidget {
  final Widget child;
  final bool isPaused;

  const DecreaseIncreaseAnimationTransition({
    required this.child,
    this.isPaused = false,
    super.key,
  });

  @override
  DecreaseIncreaseAnimationTransitionState createState() =>
      DecreaseIncreaseAnimationTransitionState();
}

class DecreaseIncreaseAnimationTransitionState extends State<DecreaseIncreaseAnimationTransition>
    with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _scaleController = AnimationController(
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
      vsync: this,
    );

    _scaleAnimation = CurvedAnimation(parent: _scaleController, curve: Curves.linear);

    _runAnimation();
  }

  void _runAnimation() {
    _scaleController.repeat(
      min: 0.7,
      max: 1,
      period: const Duration(seconds: 2),
      reverse: true,
    );
  }

  @override
  void didUpdateWidget(covariant DecreaseIncreaseAnimationTransition oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isPaused != widget.isPaused) {
      if (widget.isPaused) {
        _scaleController.stop();
      } else if (!_scaleController.isAnimating) {
        _runAnimation();
      }
    }
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }
}
