import 'package:flutter/material.dart';
import 'package:todo_app/ui/entities/todo.dart';
import 'package:todo_app/ui/widgets/todo_list.dart';

class UndoneTodoListScreen extends StatelessWidget {
  const UndoneTodoListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return BuildTodoCard(
          todo: Todo(
            "Flutter",
            "Flutter is Dart Framework",
            DateTime.now(),
          ),
          onCardIconPressed: (){},
        );
      },
    );
  }
}
