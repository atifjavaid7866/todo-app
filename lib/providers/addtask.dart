import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddUserTask extends ChangeNotifier {
  List<String> addedtasklist = [];
  List<String> donetasklist = [];

  List<String> get gettask => addedtasklist;

  void Adtask(String task) async {
    addedtasklist.add(task);
    notifyListeners();
  }

  void Removetask(var index) async {
    donetasklist.add(addedtasklist[index]);
    addedtasklist.removeAt(index);
    notifyListeners();
  }

  // void DoneTask(var index) async {
  //   notifyListeners();
  // }
}
