import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/screens/day.dart';
import 'package:zeezuu/screens/favorites.dart';
import 'package:zeezuu/screens/homepage.dart';
import 'package:zeezuu/screens/night.dart';
import 'package:zeezuu/screens/profile.dart';
import 'package:zeezuu/screens/search.dart';
import 'package:zeezuu/widgets/diy_card.dart';

class Routine extends StatelessWidget {
  const Routine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Plan your Glow-up",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: Get.width,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: ListView(
                children: [
                  Row(
                    // FIRST ROW
                    children: [
                      Expanded(
                          child: Diy(
                        //CHANGE PITCURE
                        img: "images/skincareday.png",
                        title: "Day Time Routine",
                        onClicked: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Day()));
                        },
                      )),
                    ],
                  ),
                  Row(
                    // SECOND ROW
                    children: [
                      Expanded(
                          child: Diy(
                        //CHANGE PITCURE
                        img: "images/look.png",
                        title: "Night Time Routine",
                        onClicked: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Night()));
                        },
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
