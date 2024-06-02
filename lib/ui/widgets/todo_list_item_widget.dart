import 'package:flutter/material.dart';
import 'package:todo_app/todo_functions.dart';
import 'package:todo_app/ui/entities/todo.dart';
import 'package:intl/intl.dart';

class BuildTodoCardWidget extends StatelessWidget {
  const BuildTodoCardWidget({
    super.key,
    required this.todo,
    required this.onCardIconPressed,
  });

  final Todo todo;
  final VoidCallback onCardIconPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: buildCardTintColor(todo.isDone),
      color: buildCardBGColor(todo.isDone),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      elevation: 4,
      child: ListTile(
        title: Text(
          todo.title,
          style: TextStyle(
              decoration: buildTodoTtileTextDecoration(todo.isDone),
              decorationThickness: 3,
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: buildTextColor(todo.isDone)),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.description,
              style: TextStyle(color: buildTextColor(todo.isDone)),
            ),
            Text(
              DateFormat.yMEd().add_jms().format(todo.time),
              style: TextStyle(color: buildTextColor(todo.isDone)),
            ),
          ],
        ),
        trailing: _buildTodoTrailing(todo.isDone),
      ),
    );
  }

  Widget _buildTodoTrailing(bool isDone) {
    return GestureDetector(
      onTap: onCardIconPressed,
      child: CircleAvatar(
        child: Icon(
          buildTodoIcon(isDone),
        ),
      ),
    );
  }
}
