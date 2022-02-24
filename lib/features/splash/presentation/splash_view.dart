import 'package:flutter/material.dart';
import 'package:fruit_markit/core/constants.dart';
import 'package:fruit_markit/features/splash/presentation/widgets/splash_body.dart';

class SplashView extends StatelessWidget{
  const SplashView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kMainColor,
      body: SplashBody(),
    );
  }

}