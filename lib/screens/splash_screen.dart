import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_personal_components/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'assets/images/cardImage.jpeg',
          scale: 6,
        ),
      ),
    );
  }

  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((_) async {
      await Get.offAll(HomeScreen());
    });
  }
}
