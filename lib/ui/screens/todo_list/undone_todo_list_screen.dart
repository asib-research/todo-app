import 'package:flutter/material.dart';
import 'package:todo_app/ui/entities/todo.dart';
import 'package:todo_app/ui/widgets/empty_llist_widgets.dart';
import 'package:todo_app/ui/widgets/listview_widget.dart';
import 'package:todo_app/ui/widgets/todo_list_item_widget.dart';

class UndoneTodoListScreen extends StatelessWidget {
  const UndoneTodoListScreen({
    super.key,
    required this.todoList,
    required this.onDelete,
    required this.onStatucChange,
  });
  final List<Todo> todoList;
  final Function(int) onDelete;
  final Function(int) onStatucChange;

  @override
  Widget build(BuildContext context) {
    if (todoList.isEmpty) {
      return EmptyLlistWidgets();
    }
    return BuildCustomListViewWidget(
      todoList: todoList,
      onDelete: onDelete,
      onStatucChange: onStatucChange,
    );
  }
}
