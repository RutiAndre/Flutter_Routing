import 'package:flutter/material.dart';

// Semplice manager per la lista dei todo in memoria
class TodoManager {
  // ValueNotifier permette alle pagine di "ascoltare" i cambiamenti della lista
  static final ValueNotifier<List<String>> todos = ValueNotifier<List<String>>([]);

  static void addTodo(String task) {
    if (task.isNotEmpty) {
      todos.value = [...todos.value, task];
    }
  }

  static void removeTodo(int index) {
    List<String> currentList = List.from(todos.value);
    currentList.removeAt(index);
    todos.value = currentList;
  }
}