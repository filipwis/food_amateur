import 'package:go_router/go_router.dart';

import '../page/home_page/home_page.dart';

final mainRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    )
  ],
);
