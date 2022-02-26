import 'package:flutter/material.dart';
import 'package:fruit_markit/core/constants.dart';
import 'package:fruit_markit/core/utilis/size_config.dart';
import 'package:fruit_markit/core/widgets/customs_buttons.dart';
import 'package:fruit_markit/core/widgets/space.dart';
import 'package:fruit_markit/features/auth/presentation/pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const VerticalSpace(13),
        SizedBox(
            height: SizeConfig.defaultSize! * 17,
            child: Image.asset('assets/images/logo.png'),
        ),
        const VerticalSpace(5),
        const Text(
          'Fruit Market',
          style: TextStyle(
            color: kMainColor,
            fontWeight: FontWeight.bold,
            fontFamily: 'Poppins',
            fontSize: 52,
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          children: [
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(
                  text: 'Login with Google',
                  iconData: Icons.ac_unit,
                  onTab: (){
                    Get.to( () => const CompleteInformationView(),
                    duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeft
                    );
                  },
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: CustomButtonWithIcon(
                  text: 'Login with Facebook',
                  iconData: Icons.face,
                  onTab: (){
                    Get.to( () => const CompleteInformationView(),
                        duration: const Duration(milliseconds: 500),
                        transition: Transition.rightToLeft
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        const Expanded(child: SizedBox())
      ],
    );
  }
}
