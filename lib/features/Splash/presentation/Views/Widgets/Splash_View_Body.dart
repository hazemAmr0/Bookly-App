import 'package:bookly_app/constants.dart';
import 'package:bookly_app/features/Home/presentation/views/home_view.dart';
import 'package:bookly_app/features/Splash/presentation/Views/Widgets/sliding_image.dart';
import 'package:bookly_app/features/Splash/presentation/Views/Widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>with SingleTickerProviderStateMixin {
late  AnimationController animationController;
late  Animation<Offset> slidingAnimation;
late  Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    NavigateToHome();
  }

 



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Slidingimage(animationController: animationController, slidingAnimation2: slidingAnimation2),
          SlidingText(slidingAnimation: slidingAnimation),
        ],
      ),
    );
  }
  void NavigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
          transition: Transition.fadeIn, duration: kPrimaryDuration);
    });
  }
    void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(3, 0), end: const Offset(0, 0))
            .animate(animationController);
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(-3, 0), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }
}




