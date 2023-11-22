import 'package:app/Util/toDoList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // List of ToDo Tasks
  List toDoList = [
    ["Lavar a louça", false],
    ["Lavar a louça", false]
  ];

  void checkBoxChanged(bool? value, int index){
    setState(() {
      toDoList[index][1] = ! toDoList[index][1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        title: Text(widget.title),
        centerTitle: true,
        elevation: 1,
      ),
      body: ListView.builder(
          itemCount: toDoList.length,
          itemBuilder: (context, index){
            return ToDoTile(taskName: toDoList[index][0],
                taskCompleted: toDoList[index][1],
                onChanged: (value) => checkBoxChanged(value, index),
            );
          },
      ),
    );
  }
}
