import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class Slidingimage extends StatelessWidget {
  const Slidingimage({
    super.key,
    required this.animationController,
    required this.slidingAnimation2,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimation2;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController,
        builder: (context, child) {
          return SlideTransition(
            position: slidingAnimation2,
            child: Image.asset(AppAssets.splashLogo,
                width: 200, height: 200, color: Colors.white),
          );
        });
  }
}
