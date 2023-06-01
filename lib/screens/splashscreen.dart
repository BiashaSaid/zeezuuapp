import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/screens/get_started.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
//implementing splashscreen
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () => Get.to(() => Get_Started()));
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Container(
        padding: EdgeInsets.all(20),
        width: Get.width,
        height: Get.height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/logo.png"),
          ),
        ),
      ),
    );
  }
}
