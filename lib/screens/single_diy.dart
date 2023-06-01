import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zeezuu/controllers/main.controller.dart';
import 'package:zeezuu/screens/favorites.dart';

class SingleDiy extends StatelessWidget {
  const SingleDiy({super.key, required this.diyrecipe, required this.id});
  final Map<String, dynamic> diyrecipe;
  final String id;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //DONE
        body: Container(
          width: Get.width,
          height: Get.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage("${diyrecipe["image"]}"),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Color.fromRGBO(244, 229, 220, 1), BlendMode.darken)),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 20,
                ),
                alignment: Alignment.centerLeft,
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back,
                      size: 35,
                      color: Color.fromRGBO(
                        0,
                        0,
                        0,
                        1,
                      ),
                    )),
              ),
              //space
              // SizedBox(
              //   height: 60,
              // ),
              //image container
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height * .75,
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 25),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 229, 220, 1),
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: Get.width * 10,
                            height: Get.height * 10,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 229, 220, 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                            child: ListView(
                              children: [
                                Text(
                                  "${diyrecipe["title"]}",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "${diyrecipe["description"]}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color.fromRGBO(
                                      0,
                                      0,
                                      0,
                                      1,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${diyrecipe["derma"]}",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontStyle: FontStyle.italic,
                                      color: Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "Recipe",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${diyrecipe["recipe"]}",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontStyle: FontStyle.normal,
                                    color: Color.fromRGBO(0, 0, 0, 1),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "${diyrecipe["footnote"]}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: InkWell(
                      onTap: () async {
                        await MainController.to.addRemoveRecipe(id);
                      },
                      child: Obx(() {
                        return Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(207, 154, 122, 1)),
                          child: MainController.to.favoritesDiyRecipes.value
                                  .containsKey(id)
                              ? Icon(
                                  Icons.favorite_outlined,
                                  color: Colors.white,
                                  size: 30,
                                )
                              : Icon(
                                  Icons.favorite_border_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    //DONE
  }
}
