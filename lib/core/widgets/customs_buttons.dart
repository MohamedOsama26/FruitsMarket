import 'package:flutter/material.dart';
import 'package:fruit_markit/core/constants.dart';
import 'package:fruit_markit/core/utilis/size_config.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kMainColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(text,
          style: const TextStyle(
            fontSize: 14,
            color: Color(0xFFFFFFFF),
            fontWeight: FontWeight.w500
          ),),
      ),
    );
  }

}