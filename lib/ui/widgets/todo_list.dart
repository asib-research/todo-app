import 'package:flutter/material.dart';
import 'package:todo_app/ui/entities/todo.dart';

class BuildTodoCard extends StatelessWidget {
  const BuildTodoCard({
    super.key,
    required this.todo,
    required this.onCardIconPressed
  });

  final Todo todo;
  final VoidCallback onCardIconPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: _buildCardTintColor(todo.isDone),
      color: _buildCardBGColor(todo.isDone),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      elevation: 4,
      child: ListTile(
        title: Text(
          todo.title,
          style: TextStyle(
              decoration: _buildTodoTtileTextDecoration(todo.isDone),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(todo.description),
            Text(todo.time.toString()),
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
          _buildTodoIcon(isDone),
        ),
      ),
    );
  }

  IconData? _buildTodoIcon(bool isDone) {
    return isDone ? Icons.clear:Icons.check;
  }

  TextDecoration? _buildTodoTtileTextDecoration(bool isDone) {
    return isDone ? TextDecoration.lineThrough: null;
  }

  Color? _buildCardTintColor(bool isDone){
    return isDone?Colors.deepOrangeAccent:null;
  }

  Color? _buildCardBGColor(bool isDone){
    return isDone?Colors.deepOrangeAccent.shade100:null;
  }

}
