import 'package:flutter/material.dart';
import 'package:fruit_markit/core/widgets/custom_text_feild.dart';
import 'package:fruit_markit/core/widgets/space.dart';

class CompleteInfoItem extends StatelessWidget {
  const CompleteInfoItem({Key? key, required this.text, this.maxLines, this.inputType}) : super(key: key);

  final String text;
  final int? maxLines;
  final TextInputType? inputType;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(text,
          style: const TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16,
            color: Color(0xFF0C0B0B),
            fontWeight: FontWeight.w600,
            // height: 1.5625
          ),
        ),
        const VerticalSpace(1),
        CustomTextField(
            inputType: inputType,
            maxLines: maxLines
        ),
      ],
    );
  }
}
