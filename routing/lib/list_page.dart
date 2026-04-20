import 'package:flutter/material.dart';
import 'todo_manager.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('I tuoi Todo')),
      // ValueListenableBuilder ricostruisce la UI ogni volta che la lista cambia
      body: ValueListenableBuilder<List<String>>(
        valueListenable: TodoManager.todos,
        builder: (context, todos, child) {
          if (todos.isEmpty) {
            return const Center(child: Text('La lista è vuota'));
          }
          return ListView.builder(
            itemCount: todos.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(todos[index]),
                trailing: IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () => TodoManager.removeTodo(index),
                ),
              );
            },
          );
        },
      ),
    );
  }
}