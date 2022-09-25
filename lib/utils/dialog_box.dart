import 'package:flutter/material.dart';
import 'package:untitled1/utils/myButton.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSaved;
  VoidCallback onCancel;
  DialogBox(
      {Key? key,
      required this.controller,
      required this.onCancel,
      required this.onSaved})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: Colors.yellow[300],
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a new Task"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButton(name: "SAVE", onPressed: onSaved),
                SizedBox(width: 8),
                MyButton(name: "CANCEL", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
