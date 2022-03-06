import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/splash_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp( const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({Key? key}) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        fontFamily: 'Poppins'
      ),
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
    );
  }
}
