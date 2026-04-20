import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainScaffold extends StatelessWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child, // Qui viene visualizzata la pagina corrente (/input o /list)
      bottomNavigationBar: NavigationBar(
        selectedIndex: _calculateSelectedIndex(context),
        onDestinationSelected: (int index) {
          if (index == 0) {
            context.go('/input');
          } else {
            context.go('/list');
          }
        },
        destinations: const [
          NavigationDestination(icon: Icon(Icons.add), label: 'Inserisci'),
          NavigationDestination(icon: Icon(Icons.list), label: 'Lista'),
        ],
      ),
    );
  }

  // Funzione per capire quale tab evidenziare in base al percorso attuale
  int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).uri.path;
    if (location == '/input') return 0;
    if (location == '/list') return 1;
    return 0;
  }
}