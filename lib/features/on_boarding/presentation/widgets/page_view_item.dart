import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fruit_markit/core/utilis/size_config.dart';
import 'package:fruit_markit/core/widgets/space.dart';

class PageViewItem extends StatelessWidget{
  const PageViewItem({Key? key, required this.title, required this.subtitle, required this.image}) : super(key: key);

  final String title;
  final String subtitle;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(22),
        SizedBox(child: Image.asset(image),
        height: SizeConfig.defaultSize!*30,),
        const VerticalSpace(2.5),
        Text(title,
        style: const TextStyle(
          color: Color(0xFF2F2E41),
          fontWeight: FontWeight.w600,
          fontSize: 20
        ),
        ),
        const VerticalSpace(1.50),
        Text(subtitle,
          style: const TextStyle(
            color: Color(0xFF78787c),
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),
      ],
    );
  }
  
}