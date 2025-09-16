import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing ',
      home: Scaffold(
        backgroundColor: const Color(0xFFF3F4F6),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20), // 10px from the top
            child: Align(
              alignment: Alignment.topCenter, // stick near the top
              child: ProductHeader(),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductHeader extends StatelessWidget {
  const ProductHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 650,
      height: 75,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        // shadow / silhouette effect
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Flutter Mart text
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.centerLeft,
              child: const Text(
                'Flutter Mart',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 9, 14, 59),
                ),
              ),
            ),
          ),

          const SizedBox(width: 8),

          // Shopping cart icon (plain black/dark blue)
          const Icon(
            Icons.shopping_cart,
            size: 36,
            color: Color.fromARGB(255, 9, 14, 59),
          ),
        ],
      ),
    );
  }
}
