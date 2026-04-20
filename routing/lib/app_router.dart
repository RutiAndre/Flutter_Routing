import 'package:go_router/go_router.dart';
import 'home_page.dart';
import 'details_page.dart';
final GoRouter appRouter = GoRouter(
initialLocation: '/',
routes: [
GoRoute(
path: '/',
builder: (context, state) => const HomePage(),
),
GoRoute(
path: '/details/:name',
builder: (context, state) {
final name = state.pathParameters['name']!;
return DetailsPage(name: name);
},
),
],
);