import 'package:flutter/material.dart';
import 'package:union_shop/auth_page.dart';

void main() {
  runApp(const UnionShopApp());
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 128, 33, 243),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AuthPage(),
    );
  }
}
