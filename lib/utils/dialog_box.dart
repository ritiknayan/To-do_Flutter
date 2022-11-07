import 'package:flutter/material.dart';
import 'package:todo/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;

  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onCancel,
      required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Add a new task'),
          ),

          // buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //save
              MyButton(onPressed: onSave, text: "Save"),

              SizedBox(
                width: 8,
              ),
              //cancel
              MyButton(onPressed: onCancel, text: "Cancel"),
            ],
          )
        ]),
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
