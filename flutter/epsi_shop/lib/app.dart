import 'package:epsi_shop/page/cart_page.dart';
import 'package:epsi_shop/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
        name: 'cart',
        path: '/cart',
        builder: (context, state) => const CartPage(
              items: [],
            )),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
