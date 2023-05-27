import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';

class Utils {
  static showMsg(title, msg, color, icon) async {
    SmartDialog.show(
      //tag: "AlertDialog",
      alignment: Alignment.bottomCenter,
      backDismiss: true,
      displayTime: Duration(milliseconds: 3000),
      maskColor: Colors.transparent,
      builder: (_) {
        return Container(
          width: double.infinity,
          height: 70,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color[300],
              border: Border(left: BorderSide(color: color[700], width: 3))),
          child: ListTile(
            leading: Container(
              height: 70,
              width: 30,
              alignment: AlignmentDirectional.center,
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            title: Text('$title',
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.w400)),
            subtitle: Text('$msg', style: const TextStyle(color: Colors.white)),
          ),
        );
      },
    );
  }

  static showSuccess(msg) {
    showMsg("Success!", msg, Colors.green, Icons.check_circle_sharp);
  }

  static showInfo(msg) {
    showMsg("Info!", msg, Colors.blue, Icons.info);
  }

  static showError(msg) {
    showMsg("Error!", msg, Colors.red, Icons.error_outlined);
  }

  static showWarning(msg) {
    showMsg("Warning!", msg, Colors.orange, Icons.warning);
  }

  static showLoading({message = "LOADING"}) {
    SmartDialog.show(
        tag: "Loader",
        alignment: Alignment.center,
        permanent: false,
        maskColor: Colors.white,
        backDismiss: true,
        builder: (context) {
          return Container(
              color: Colors.transparent,
              width: 300,
              alignment: AlignmentDirectional.center,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 300,
              child: Column(
                children: [
                  CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "$message",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ));
        });
  }

  static void dismissLoader() {
    SmartDialog.dismiss(tag: "Loader");
  }
}