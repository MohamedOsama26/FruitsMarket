import 'package:flutter/material.dart';
import 'package:fruit_markit/core/utilis/size_config.dart';
import 'package:fruit_markit/features/on_boarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fadingAnimation = Tween<double>(begin: 0.20,end: 1.00).animate(animationController!);
    animationController?.repeat(reverse: true);

    goToNextView();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
           'Fruit Market',
           style: TextStyle(
               fontFamily: 'Poppins',
               fontWeight: FontWeight.bold,
               fontSize: 51,
               color: Color(0xFFFFFFFF)),
            ),
        ),
        const Spacer(),
        Image.asset('assets/images/f79c59e53863c9b98a677d93c8618393.png'),
      ],
    );
  }

  void goToNextView() {
    Future.delayed(const Duration(seconds: 3),() {
      Get.to(()=>const OnBoardingView(), transition: Transition.fade);
    },);
  }
}
