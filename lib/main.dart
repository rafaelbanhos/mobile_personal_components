import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_personal_components/screens/splash_screen.dart';

void main() {
  runApp(BlocProvider(
    blocs: [],
    dependencies: [],
    child: GetMaterialApp(
      theme: ThemeData(
          //fontFamily: "",
          primaryColor: Color.fromRGBO(6, 176, 188, 1)),
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
