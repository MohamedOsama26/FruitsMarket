import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_markit/core/utilis/size_config.dart';
import 'package:fruit_markit/core/widgets/customs_buttons.dart';
import 'package:fruit_markit/features/on_boarding/presentation/widgets/custom_indicator.dart';
import 'package:fruit_markit/features/on_boarding/presentation/widgets/custom_page_view.dart';
import 'package:get/get.dart';

import '../../../auth/presentation/pages/login/login_view.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({Key? key}) : super(key: key);

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController!,
        ),
        Positioned(
            bottom: SizeConfig.defaultSize! * 20,
            left: 0,
            right: 0,
            child: CustomIndicator(
              dotIndex: pageController!.hasClients ? pageController?.page : 0,
            )),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: MediaQuery.of(context).size.height * 0.10,
            right: 32,
            child: const Text(
              'Skip',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color(0xFF898989),
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.defaultSize! * 10,
            right: SizeConfig.defaultSize! * 10,
            bottom: SizeConfig.defaultSize! * 10,
            child: GestureDetector(
              onTap: () {},
              child: CustomGeneralButton(
                  onTab: () {
                    if (pageController!.page! < 2) {
                      pageController?.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    } else {
                      Get.to(() => const LoginView(),
                          transition: Transition.rightToLeft,
                          duration: const Duration(milliseconds: 500));
                    }
                  },
                  text: pageController!.hasClients
                      ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                      : 'Next'),
            )),
      ],
    );
  }
}
