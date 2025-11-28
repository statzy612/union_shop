import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
        backgroundColor: const Color(0xFF4d2963),
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                        Text(
              "About the Union Shop",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4d2963),
              ),
            ),
            SizedBox(height: 20),

            Text(
              "The Union Shop provides a range of official University of Portsmouth merch, "
              "clothing, stationery, and essentials. Our aim is to support students "
              "while offering nice products that represent the university.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
