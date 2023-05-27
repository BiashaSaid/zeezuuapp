import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/screens/favorites.dart';
import 'package:zeezuu/screens/homepage.dart';
import 'package:zeezuu/screens/routine.dart';
import 'package:zeezuu/screens/search.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('image/look.png'),
                      radius: 40.0,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Phone Nmumber',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Bio',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Padding(
                        padding: EdgeInsets.fromLTRB(16.0, 0, 16, 16),
                        child: Text('....'),
                      )
                    ],
                  )
                ],
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
