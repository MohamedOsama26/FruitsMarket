import 'package:flutter/material.dart';
import 'package:fruit_markit/core/constants.dart';
import 'package:fruit_markit/core/utilis/size_config.dart';
import 'package:fruit_markit/core/widgets/space.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({Key? key, required this.text, this.onTab})
      : super(key: key);
  final String text;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: kMainColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
                fontSize: 14,
                color: Color(0xFFFFFFFF),
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class CustomButtonWithIcon extends StatelessWidget {
  const CustomButtonWithIcon({Key? key, this.iconData, this.text, this.onTab}) : super(key: key);
  final IconData? iconData;
  final String? text;
  final VoidCallback? onTab;
  // final

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xFF707070),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(iconData!),
            const HorizontalSpace(1),
            Text(
              text!,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF000000),
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
