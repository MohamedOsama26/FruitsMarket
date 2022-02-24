import 'package:flutter/material.dart';
import 'package:fruit_markit/features/on_boarding/presentation/widgets/on_boarding_body.dart';

class OnBoardingView extends StatelessWidget{
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoardingBody(),
    );
  }

}