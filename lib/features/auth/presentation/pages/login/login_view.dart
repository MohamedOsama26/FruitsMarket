import 'package:flutter/material.dart';
import 'package:fruit_markit/features/auth/presentation/pages/login/widgets/login_body.dart';

class LoginView extends StatelessWidget{
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginBody(),
    );
  }

}