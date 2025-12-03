import 'package:flutter/material.dart';

// A simple data class for the products
class ProductItem {
  final String name;
  final String price;
  final String imageUrl;

  ProductItem(this.name, this.price, this.imageUrl);
}

class DummyCollectionPage extends StatelessWidget {
  final String title;

  const DummyCollectionPage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // A list of sample products using local asset images
    final products = [
      ProductItem("T-Shirt", "£10.00", "assets/images/tshirt.png"),
      ProductItem("Cap", "£12.00", "assets/images/cap.png"),
      ProductItem("Jogger", "£15.00", "assets/images/jogger.png"),
      ProductItem("Black T-Shirt", "£18.00", "assets/images/black.png"),
      ProductItem("T-Shirt", "£20.00", "assets/images/tshirt.png"),
      ProductItem("Cap", "£22.00", "assets/images/cap.png"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color(0xFF4d2963), // A matching app bar color
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 2 items per row
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.75, // Adjust for better item shape
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          // A card for each product with image, name, and price
          return Card(
            clipBehavior: Clip.antiAlias,
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.asset(
                    product.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0)
                      .copyWith(bottom: 8.0),
                  child: Text(product.price),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
