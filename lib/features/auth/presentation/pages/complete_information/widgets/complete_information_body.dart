import 'package:flutter/material.dart';
import 'package:fruit_markit/core/widgets/customs_buttons.dart';
import 'package:fruit_markit/core/widgets/space.dart';
import 'package:fruit_markit/features/auth/presentation/pages/complete_information/widgets/complete_info_item.dart';

class CompleteInformationBody extends StatelessWidget{
  const CompleteInformationBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Column(
        children: const [
          VerticalSpace(10),
          CompleteInfoItem(
              text: 'Enter your name',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter your phone number',
          ),
          VerticalSpace(2),
          CompleteInfoItem(
            text: 'Enter your address',
            maxLines: 5,
          ),
          VerticalSpace(5),
          CustomGeneralButton(
            text: 'Login',
          ),
        ],
      ),
    );
  }
}