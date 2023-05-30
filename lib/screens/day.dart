import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Day extends StatelessWidget {
  const Day({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(207, 154, 122, 1),
        centerTitle: true,
        title: Text(
          'Routine for Day-time',
          style: TextStyle(
              color: Color.fromRGBO(
                0,
                0,
                0,
                1,
              ),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            //ONE

            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 229, 220, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        image: AssetImage(
                          "images/skincare(2).png",
                        ),
                      ),
                      color: Color.fromRGBO(244, 229, 220, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Cleanse",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Text(
                          "Use an oilbased cleanse or cleansing balm to remove oil and dirt tht have been built up in your face.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //TWO
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(245, 224, 211, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "images/exfoliate.png",
                        ),
                      ),
                      color: Color.fromRGBO(245, 224, 211, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Exfoliate",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "This step is necessary to remove dead cells and unclog pores to make way for brighter skin",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //THREE
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 221, 206, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerLeft,
                        image: AssetImage(
                          "images/toner.png",
                        ),
                      ),
                      color: Color.fromRGBO(246, 221, 206, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Toner",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Text(
                          "Helps balance your pH level and preps the skin for all wonderful ingridients are about to be layered on",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            //FIVE
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(249, 226, 211, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "images/serum.png",
                        ),
                      ),
                      color: Color.fromRGBO(249, 226, 211, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Essence",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Are packed with hydrating and nourishing ingredients such as glycerin and minerals to give you plumper and softer skin",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),

            //SIX
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 218, 200, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "images/ampoule.png",
                        ),
                      ),
                      color: Color.fromRGBO(246, 218, 200, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Ampoule",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Apply an ampoule to your and neck,it is important to choose an ampoule that is suitbale for your skin type.Use an ampoule three times a week.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 5,
            ),
            //NINE
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 197, 167, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "images/moisturizer.png",
                        ),
                      ),
                      color: Color.fromRGBO(246, 197, 167, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Moisturizer",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Seal in moisture and active ingredients with a lightweight cream or gel.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //TEN
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(247, 198, 168, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "images/skincare.png",
                        ),
                      ),
                      color: Color.fromRGBO(247, 198, 168, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Sunscreen",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Protect your skin from UV rays ,premature aging and other skin damage.Dont forget to reapply throughtout the day.",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(248, 191, 155, 1),
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              child: Row(
                children: [
                  Container(
                    width: Get.width * .2,
                    height: Get.height * .2,
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        alignment: Alignment.centerRight,
                        image: AssetImage(
                          "images/water.png",
                        ),
                      ),
                      color: Color.fromRGBO(248, 191, 155, 1),
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Title(
                          color: Color.fromRGBO(0, 0, 0, 1),
                          child: Text(
                            "Drink Water",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "REMEMBER TO HYDRATE.. ALWAYS",
                          style: TextStyle(
                            fontSize: 20,
                            color: Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
      //WASH YOUR FACE
      //CLEANSER
      //(CLEANSE)
      //TONER ESSENCE/APPLY TONER
      //APPLY AMPOULE
      //SERUM
      //EYECREAM/USE AN EYE CREAM
      //(TREAT
      ////(PROTECT)
      //MOISTURIZER
      //SPOT TREATMENT
      //FACE OIL
      //SUNSCREEN
