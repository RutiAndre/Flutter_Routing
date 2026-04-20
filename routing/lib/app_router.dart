import 'package:go_router/go_router.dart';
import 'input_page.dart';
import 'list_page.dart';
import 'main_scaffold.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/list',
  routes: [
    // ShellRoute permette di avere la NavigationBar fissa mentre cambiano i contenuti
    ShellRoute(
      builder: (context, state, child) {
        return MainScaffold(child: child);
      },
      routes: [
        GoRoute(
          path: '/input',
          builder: (context, state) => const InputPage(),
        ),
        GoRoute(
          path: '/list',
          builder: (context, state) => const ListPage(),
        ),
      ],
    ),
  ],
);