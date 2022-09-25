import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ToDoDataBase {
  List toDoList = [];
  // refrence the box
  final _myBox = Hive.box("myBox");

  // create
  void createInitialData() {
    toDoList = [
      ['Make Tutorial', false],
      ['Do Exercise ', true],
    ];
  }

  void loadData() {
    toDoList = _myBox.get("ToDoList");
  }

  void updateDatabase() {
    _myBox.put("ToDoList", toDoList);
  }
}
