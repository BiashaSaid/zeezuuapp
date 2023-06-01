import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/controllers/main.controller.dart';
import 'package:zeezuu/screens/single_diy.dart';
import 'package:zeezuu/screens/favorites.dart';
import 'package:zeezuu/screens/profile.dart';
import 'package:zeezuu/screens/routine.dart';
import '../widgets/diy_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var controller = PageController();
  String title = "Dashboard";
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        backgroundColor: Color.fromRGBO(207, 154, 122, 1),
        body: Container(
            width: Get.width,
            height: Get.height,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                  if (value == 0) {
                    title = "Dashboard";
                  } else if (value == 1) {
                    title = "Favourite";
                  } else if (value == 2) {
                    title = "Routine";
                  } else if (value == 3) {
                    title = "Profile";
                  }
                });
              },
              controller: controller,
              children: [Dashboard(), Favorite(), Routine(), Profile()],
            )),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentPage,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromRGBO(220, 180, 155, 1),
          selectedItemColor: Color.fromRGBO(134, 101, 94, 1),
          unselectedItemColor: Color.fromRGBO(0, 0, 0, 1),
          selectedFontSize: 15,
          unselectedFontSize: 15,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
            controller.animateToPage(value,
                duration: Duration(milliseconds: 300), curve: Curves.bounceOut);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline_sharp), label: "Favorites"),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_month_outlined), label: "Routine"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Profile"),
          ],
        ),
      ),
    );
  }
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 30,
          ),
          width: Get.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome a New You!",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Because your skin IS your most precious accessory",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "~ Fem Gold",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 10,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "DIY Skincare Treatments",
                textAlign: TextAlign.end,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        //CURVES
        Expanded(
          child: Container(
            width: Get.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
            ),
            child: GridView.count(
                crossAxisCount: 2,
                children: MainController.to.diyRecipes.entries.map((diyRecipe) {
                  return Diy(
                    img: "${diyRecipe.value["image"]}",
                    title: "${diyRecipe.value["title"]}",
                    onClicked: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SingleDiy(
                                diyrecipe: diyRecipe.value,
                              )));
                    },
                  );
                }).toList()),
          ),
        ),
      ],
    );
  }
}
