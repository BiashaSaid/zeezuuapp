import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/screens/createaccount.dart';
import 'package:zeezuu/screens/homepage.dart';

class Get_Started extends StatelessWidget {
  const Get_Started({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/skincare.png"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(243, 193, 161, 1), BlendMode.darken)),
        ),
        child: Column(children: [
          Expanded(child: Container()),
          TextButton(
            onPressed: (() {
              Get.to(() => HomePage());
            }),
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Color.fromRGBO(244, 229, 220, 1),
                fontSize: 55,
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 1)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                    color: Color.fromRGBO(244, 229, 220, 1),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
