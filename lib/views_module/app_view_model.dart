import 'package:flutter/material.dart';
import 'package:todo_list/models/user_model.dart';

import '../models/task_model.dart';

class AppviewModel extends ChangeNotifier{
  List<Task> tasks = <Task>[];
  User user = User("Vraj Patel");

  Color clrLv1 = Colors.grey.shade50;
  Color clrLv2 = Colors.grey.shade200;
  Color clrLv3 = Colors.grey.shade800;
  Color clrLv4 = Colors.grey.shade900;

  int get numTasks => tasks.length;

  bool getTaskValue(int taskIndex){
    return tasks[taskIndex].complete;
  }

  String get username => user.username;

  int get numTasksRemaining => tasks.where((task) => !task.complete).length;

  String getTaskTitle(int taskIndex){
    return tasks[taskIndex].title;
  }

  void deleteTask(int taskIndex){
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void setTaskValue(int taskIndex, bool taskValue){
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  void addTask(Task newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  void updateUsername(String newUsername){
    user.username = newUsername;
    notifyListeners();
  }

  void deleteAllTask(){
    tasks.clear();
    notifyListeners();
  }

  void deleteCompletedTask(){
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }

  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context){
          return bottomSheetView;
        }));
  }
}