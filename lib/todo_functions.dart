
import 'package:flutter/material.dart';

IconData? buildTodoIcon(bool isDone) {
  return isDone ? Icons.clear : Icons.check;
}

TextDecoration? buildTodoTtileTextDecoration(bool isDone) {
  return isDone ? TextDecoration.lineThrough : null;
}

Color? buildCardTintColor(bool isDone) {
  return isDone ? Colors.deepOrangeAccent : null;
}

Color? buildCardBGColor(bool isDone) {
  return isDone ? Colors.deepOrangeAccent.shade100 : null;
}

Color? buildTextColor(bool isDone) {
  return isDone ? Colors.white : null;
}


