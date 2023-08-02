import 'package:flutter/material.dart';
import 'package:todo_list/views/add_task_view.dart';
import 'package:todo_list/views/head_view.dart';
import 'package:todo_list/views/task_info_view.dart';
import 'package:todo_list/views/task_list_view.dart';

class TaskPage extends StatelessWidget {
  const TaskPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              // Header View
              Expanded(flex: 1, child: HeaderView()),

              // Task Info View
              Expanded(flex: 1, child: TaskInfoView()),

              // Task List View
              const Expanded(flex: 7, child: TaskListView()),
            ],
          ),
        ),
        floatingActionButton: const AddTaskView());
  }
}
