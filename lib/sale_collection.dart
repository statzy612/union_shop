import 'package:flutter/material.dart';

class SaleCollection extends StatelessWidget {
  const SaleCollection({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF4d2963),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: const Center(
                  child: Text(
                    'Sale up to 50% off',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Sale Products",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
