import 'package:flutter/material.dart';
import 'package:fruit_markit/features/on_boarding/presentation/widgets/page_view_item.dart';

class CustomPageView extends StatelessWidget{
  const CustomPageView({Key? key,required this.pageController}) : super(key: key);
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      children: const [
        PageViewItem(
            title: 'E-Shopping',
            subtitle: 'Explore top organic fruits & grab them',
            image: 'assets/images/onBoarding1.png',
        ),
        PageViewItem(
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
          image: 'assets/images/onBoarding2.png',
        ),
        PageViewItem(
          title: 'Delivery arrived',
          subtitle: 'Order is arrived at your place',
          image: 'assets/images/onBoarding3.png',
        ),
      ],
    );
  }
}