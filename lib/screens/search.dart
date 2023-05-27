import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/screens/favorites.dart';
import 'package:zeezuu/screens/homepage.dart';
import 'package:zeezuu/screens/profile.dart';
import 'package:zeezuu/screens/routine.dart';


class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //DONE
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          color: Color.fromRGBO(207, 154, 122, 1),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            //search
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                decoration: new InputDecoration(
                  filled: true,
                  fillColor: Color.fromRGBO(244, 229, 220, 1),
                  prefixIcon: Icon(Icons.search),
                  labelText: "Search...",
                  enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ]),
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
      //DONE
    );
  }
}
