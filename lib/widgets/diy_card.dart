import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Diy extends StatelessWidget {
  const Diy(
      {super.key,
      required this.onClicked,
      required this.img,
      required this.title});

  final VoidCallback onClicked;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        width: Get.width * .40,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(244, 229, 220, 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            img.toLowerCase().contains("http")
                ? Image(
                    image: NetworkImage(img),
                    width: Get.width * .40,
                    height: Get.width * .40,
                  )
                : Image(
                    image: AssetImage(img),
                    width: Get.width * .40,
                    height: Get.width * .40,
                  ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ],
        ),
      ),
    );
  }
}

class Diy2 extends StatelessWidget {
  const Diy2(
      {super.key,
      required this.onClicked,
      required this.img,
      required this.title});

  final VoidCallback onClicked;
  final String img;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        width: Get.width * .40,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Color.fromRGBO(244, 229, 220, 1),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // img.toLowerCase().contains("http")
            //     ? Image(
            //         image: NetworkImage(img),
            //         width: double.maxFinite,
            //         height: Get.width * .40,
            //       )
            //     : Image(
            //         image: AssetImage(img),
            //         width: (Get.width * .40) - 30,
            //         height: Get.width * .40,
            //       ),
            Container(
              width: double.maxFinite,
              height: Get.width * .40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: img.toLowerCase().contains("http")
                    ? DecorationImage(
                        image: NetworkImage(img), fit: BoxFit.cover
                        // width: double.maxFinite,
                        // height: Get.width * .40,
                        )
                    : DecorationImage(
                        image: AssetImage(img),
                        // width: (Get.width * .40) - 30,
                        // height: Get.width * .40,
                      ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "$title",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(0, 0, 0, 1)),
            ),
          ],
        ),
      ),
    );
  }
}
