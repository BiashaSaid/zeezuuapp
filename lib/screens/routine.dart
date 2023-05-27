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
    return Scaffold(
      //STATIC DATA SPECIFIC ROUTINE
      //EXPANSION LIST TILE
      //LEADING WITH IMAGE FOR THE STEPS
      backgroundColor: Color.fromRGBO(153, 118, 96, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(153, 118, 96, 1),
        title: Text(
          "Routine",
          //
          style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
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
      ),

      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(220, 180, 155, 1),
        selectedItemColor: Color.fromRGBO(134, 101, 94, 1),
        unselectedItemColor: Color.fromRGBO(0, 0, 0, 1),
        selectedFontSize: 15,
        unselectedFontSize: 15,
        onTap: (value) {
          //RESPOND TO ITEM PRESS
          if (value == 0) {
            Get.to(() => HomePage());
          } else if (value == 1) {
            Get.to(() => Search());
          } else if (value == 2) {
            Get.to(() => Favorite());
          } else if (value == 3) {
            Get.to(() => Routine());
          } else if (value == 4) {
            Get.to(() => Profile());
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline_sharp), label: "Favorites"),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: "Routine"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
    );
  }
}
