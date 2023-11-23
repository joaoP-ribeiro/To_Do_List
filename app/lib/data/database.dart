import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('mybox');

  // run this method if this is the ldt time over opening this app
  void createInitialData() {
    toDoList = [];
  }

  // load the data from dataBase
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the dataBase
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
