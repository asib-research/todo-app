import 'package:flutter/material.dart';
import 'package:todo_app/ui/entities/todo.dart';
import 'package:todo_app/ui/widgets/todo_list_item_widget.dart';

class BuildCustomListViewWidget extends StatelessWidget {
  const BuildCustomListViewWidget({
    super.key,
    required this.todoList,
    required this.onDelete,
    required this.onStatucChange,
  });

  final List<Todo> todoList;
  final Function(int p1) onDelete;
  final Function(int p1) onStatucChange;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return Dismissible(
          key: UniqueKey(),
          onDismissed: (_) {
            onDelete(index);
          },
          child: BuildTodoCardWidget(
            todo: todoList[index],
            onCardIconPressed: () {
              onStatucChange(index);
            },
          ),
        );
      },
    );
  }
}