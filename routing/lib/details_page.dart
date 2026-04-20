import 'package:flutter/material.dart';
class DetailsPage extends StatelessWidget {
final String name;
const DetailsPage({super.key, required this.name});
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: const Text('Dettagli')),
body: Center(
child: Text('Ciao $name!', style: const TextStyle(fontSize: 24)),
),
);
}
}