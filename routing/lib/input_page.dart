import 'package:flutter/material.dart';
import 'todo_manager.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nuovo Todo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Cosa devi fare?',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_controller.text.isNotEmpty) {
                  TodoManager.addTodo(_controller.text);
                  _controller.clear();
                  // Feedback visivo
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Todo aggiunto!')),
                  );
                }
              },
              child: const Text('Aggiungi alla lista'),
            ),
          ],
        ),
      ),
    );
  }
}