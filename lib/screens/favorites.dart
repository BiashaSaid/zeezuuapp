import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/controllers/main.controller.dart';
import 'package:zeezuu/screens/homepage.dart';
import 'package:zeezuu/screens/profile.dart';
import 'package:zeezuu/screens/routine.dart';
import 'package:zeezuu/screens/single_diy.dart';
import 'package:zeezuu/widgets/diy_card.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "All your favourites!",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 10,
              ),
              // Text(
              //   "Because your skin IS your most precious accessory",
              //   style: TextStyle(
              //     color: Color.fromRGBO(0, 0, 0, 1),
              //     fontSize: 15,
              //   ),
              // ),
              // SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   "~ Fem Gold",
              //   style: TextStyle(
              //     color: Color.fromRGBO(0, 0, 0, 1),
              //     fontSize: 10,
              //     fontStyle: FontStyle.italic,
              //   ),
              // ),
              // SizedBox(
              //   height: 10,
              // ),

              // Text(
              //   "DIY Skincare Treatments",
              //   textAlign: TextAlign.end,
              //   style: TextStyle(
              //     color: Color.fromRGBO(0, 0, 0, 1),
              //     fontSize: 25,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
            ],
          ),
        ),
        //CURVES
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
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                child: Obx(() {
                  return Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: MainController.to.favoritesDiyRecipes.entries
                        .toList()
                        .map((diyRecipe) {
                      print(diyRecipe);
                      return Diy2(
                        img: "${diyRecipe.value["image"]}",
                        title: "${diyRecipe.value["title"]}",
                        onClicked: () {
                          Get.to(() => SingleDiy(
                                diyrecipe: diyRecipe.value,
                                id: diyRecipe.key,
                              ));
                        },
                      );
                    }).toList(),
                  );
                }),
              ),
            ),
          ),
        ),
      ],
    );
    ;
  }
}
