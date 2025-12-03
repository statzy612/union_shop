import 'package:flutter/material.dart';

class SaleCollectionPage extends StatelessWidget {
  const SaleCollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: const Color(0xFF4d2963),
        elevation: 0,
        title: const Text(
          "SALE • Up to 50% Off",
          style: TextStyle(letterSpacing: 1),
        ),
        centerTitle: true,
      ),
    );
  }
}
