// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/LoginPage.dart';
import 'package:flutter_application_1/pages/dialogBox.dart';
import 'package:flutter_application_1/pages/todo_tile.dart';

class homePage extends StatefulWidget {
   homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {

  //controler
  final _controller =TextEditingController();

  //list todolist
  List toDoList = [
    ["Buat Tugas Progmob", false],
    ["Satria Andrew Tan_2205551120", false],
  ];

  //tap checkbox
    void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  //save new task
  void saveNewTask(){
    setState(() {
      toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  //create new task
  void createNewTask(){
    showDialog(
      context: context, 
      builder: (context){
        return dialogBox(
          controller: _controller,
          onSave:saveNewTask,
          onCancel: () =>Navigator.of(context).pop(),
          );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('MY SCHEDULE', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
          backgroundColor: Color.fromARGB(255, 74, 84, 148),
          leading: Icon(Icons.menu, color: Colors.white,),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/loginPage');
            }, 
            icon: Icon(Icons.logout, color: Colors.white,),
            ),
          ],
        ),
        
        backgroundColor: const Color.fromARGB(255, 88, 99, 167),

        
        floatingActionButton: FloatingActionButton(
          onPressed: createNewTask,
          child: Icon(Icons.add),
        ),

        body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index) {
            return ToDoTile(
              taskName: toDoList[index][0], 
              taskCompleted: toDoList[index][1], 
              onChanged: (value) => checkBoxChanged(value, index),
              );
          },
        ),
    );
  }
}