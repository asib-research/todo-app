import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/ui/screens/todo_list/todo_list_screens.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TodoListScreen(),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: buildLightThemeData(),
      darkTheme: buildDarkThemeData(),
    );
  }
}
