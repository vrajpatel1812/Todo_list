import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/views_module/app_view_model.dart';
import 'views/task_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppviewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}