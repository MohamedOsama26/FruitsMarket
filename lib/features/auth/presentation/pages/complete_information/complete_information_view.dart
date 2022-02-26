import 'package:flutter/material.dart';
import 'package:fruit_markit/features/auth/presentation/pages/complete_information/widgets/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget{
  const CompleteInformationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CompleteInformationBody(),
    );
  }

}