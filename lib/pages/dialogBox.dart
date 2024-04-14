// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/style.dart/dialogButton.dart';

class dialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;


  dialogBox({super.key, required this.controller, required this.onSave, required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor:Color.fromARGB(255, 178, 188, 255),
      content: Container(
      height: 120, 
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
         //user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add New Task",
            ),
          ),

         // button save
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //save button
            dialogButton(text: 'save', onPressed: onSave,),

            SizedBox(width: 8,),
            //cancel button
            dialogButton(text: "cancel", onPressed: onCancel),
          ],
        )

          ],),
      ),
    );
  }
}