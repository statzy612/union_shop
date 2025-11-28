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
    // A list of sample products
    final products = [
      ProductItem("Product 1", "£10.00",
          "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab"),
      ProductItem("Product 2", "£12.00",
          "https://www.shutterstock.com/search/purple-pencil-case?image_type=illustration&dd_referrer=https%3A%2F%2Fwww.google.com%2F"),
      ProductItem("Product 3", "£15.00",
          "https://images.unsplash.com/photo-1523381210434-271e8be1f52b"),
      ProductItem("Product 4", "£18.00",
          "https://images.unsplash.com/photo-1581655353564-df123a908a58"),
      ProductItem("Product 5", "£20.00",
          "https://images.unsplash.com/photo-1542219550-37153d387c5c"),
      ProductItem("Product 6", "£22.00",
          "https://images.unsplash.com/photo-1554568218-0f1715e72254"),
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
                  child: Image.network(
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