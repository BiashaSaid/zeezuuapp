import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Night extends StatelessWidget {
  const Night({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(207, 154, 122, 1),
        centerTitle: true,
        title: Text(
          'Routine for Night-time',
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
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/look.png"),
              fit: BoxFit.fitHeight,
              colorFilter: ColorFilter.mode(
                  Color.fromRGBO(244, 229, 220, 1), BlendMode.color)),
        ),
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
                          "images/remover.png",
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
                            "Remover",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Text(
                          "Remember to remove any make up applied during the day before you prepare to sleep",
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
              height: 2,
            ),

            //TWO
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 226, 214, 1),
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
                          "images/wash clean.png",
                        ),
                      ),
                      color: Color.fromRGBO(246, 226, 214, 1),
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
                          "We highly recomend double cleansing in your night routine  to ensure a thorough cleans after a day of being exposed to UV rays ,pollution,sweat and other impurities.",
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
                  color: Color.fromRGBO(245, 222, 208, 1),
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
                      color: Color.fromRGBO(245, 222, 208, 1),
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
                          "1-3 times a week(chemical or physical exfoliation)",
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
                  color: Color.fromRGBO(243, 220, 205, 1),
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
                      color: Color.fromRGBO(243, 220, 205, 1),
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
                          "Hydrate,balance and prep your skin",
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
            //FOUR
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(244, 219, 203, 1),
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
                          "images/essence.png",
                        ),
                      ),
                      color: Color.fromRGBO(244, 219, 203, 1),
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
                          "Hydrate,balance and prep your skin",
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
                  color: Color.fromRGBO(245, 214, 195, 1),
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
                      color: Color.fromRGBO(245, 214, 195, 1),
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
                            "Serum",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Target your specific skin concerns.Highly concentrated products with actives such as AHA,BHA,Vitamin C and Retinol are the best used at night so they can work undisputed while you can work undisturbed while you sleep",
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
                  color: Color.fromRGBO(246, 212, 190, 1),
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
                      color: Color.fromRGBO(246, 212, 190, 1),
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
                          "If your skin needs some extra TLC,treat your specific skin concerns",
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
            //SEVEN
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(246, 215, 196, 1),
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
                          "images/black mask.png",
                        ),
                      ),
                      color: Color.fromRGBO(246, 215, 196, 1),
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
                            "Sheet Mask",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Spare time to treat your skin with a relaxing mask",
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
            //EIGHT
            Container(
              width: Get.width * .6,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 213, 190, 1),
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
                          "images/eyecare.png",
                        ),
                      ),
                      color: Color.fromRGBO(250, 213, 190, 1),
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
                            "Eye Care",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "Treat the delicate skin around your eyes",
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
                  color: Color.fromRGBO(248, 209, 184, 1),
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
                      color: Color.fromRGBO(248, 209, 184, 1),
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
                          "Create a protective moisture barrier with a richer/fuller cream.",
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
                  color: Color.fromRGBO(251, 206, 177, 1),
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
                          "images/sleeping mask.png",
                        ),
                      ),
                      color: Color.fromRGBO(251, 206, 177, 1),
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
                            "Sleeping Mask",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          "For extra protection and hydration all night",
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
    //OIL BASED CLEANSER/WATER BASED CLEANSER
    //EXFOLIATE
    //TONER
    //ESSENCE
    //SERUM
    //AMPOULE
    //SHEET MASK
    //EYE CARE
    //MOISTURIZER
    //SLEEPING MASK
  }
}
