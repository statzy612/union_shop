import 'package:flutter/material.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/about_us.dart';

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
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Come grab your essentials'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Hero Section
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(
                'new drop for  all essentials ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // Products Section
            const Text(
              'did you know u can personalise your order?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Product Cards
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              children: const [
                ProductCard(
                  productName: 'Hoodie',
                  price: '£10.00',
                  imagePath: 'assets/images/black.png',
                ),
                ProductCard(
                  productName: 'T SHIRT',
                  price: '£15.00',
                  imagePath: 'assets/images/tshirt.png',
                ),
                ProductCard(
                  productName: 'joggers',
                  price: '£20.00',
                  imagePath: 'assets/images/jogger.png',
                ),
                ProductCard(
                  productName: 'caps',
                  price: '£25.00',
                  imagePath: 'assets/images/cap.png',
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Buttons
            ElevatedButton(
              onPressed: () {},
              child: const Text('BROWSE PRODUCTS'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductPage()),
                );
              },
              child: const Text('VIEW ALL PRODUCTS'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Opening Hours '),
              Text('We are open from 10:00 to 18:00'),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String price;
  final String imagePath;

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductPage()),
          );
        },
        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Center(child: Icon(Icons.broken_image, size: 40));
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(productName),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(price),
            ),
          ],
        ),
      ),
    );
  }
}
