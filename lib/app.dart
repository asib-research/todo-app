import 'package:flutter/material.dart';
import 'package:todo_app/ui/screens/todo_list/todo_list_screens.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoListScreen(),
      themeMode: ThemeMode.system,
      theme: ThemeData(

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 35
          )
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromWidth(double.maxFinite),

          )
        )

      ),
    );
  }
}
