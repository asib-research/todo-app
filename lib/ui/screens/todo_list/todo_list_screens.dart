import 'package:flutter/material.dart';
import 'package:todo_app/ui/entities/todo.dart';
import 'package:todo_app/ui/screens/add_todo_new_screen.dart';
import 'package:todo_app/ui/screens/todo_list/all_todo_list_screen.dart';
import 'package:todo_app/ui/screens/todo_list/done_todo_list_screen.dart';
import 'package:todo_app/ui/screens/todo_list/undone_todo_list_screen.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({super.key});

  @override
  State<TodoListScreen> createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {

  List<Todo> _todoList = [];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Todo List"),
          bottom: const TabBar(tabs: [
            Tab(text: 'All',),
            Tab(text: 'Undone',),
            Tab(text: 'Done',),
          ]),
        ),
        body: const TabBarView(children: [
          AllTodoListScreen(),
          UndoneTodoListScreen(),
          DoneTodoListScreen(),
        ]),
        floatingActionButton: _buildFloatingActionButton(),
      ),
    );
  }

  FloatingActionButton _buildFloatingActionButton() {
    return FloatingActionButton.extended(
      tooltip: "Add new todo.",
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AddNewTodoScreen()));
      },
      icon: const Icon(
        Icons.add,
        size: 35,
      ),
      label: const Text("Add"),
    );
  }
}
