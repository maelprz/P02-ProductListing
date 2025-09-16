import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Listing',
      home: Scaffold(
        backgroundColor: const Color(0xFFF3F4F6),
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Align(
              alignment: Alignment.topCenter,
              child: ProductPage(),
            ),
          ),
        ),
      ),
    );
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: const [
        ProductHeader(),
        SizedBox(height: 20), // 20px space below header
        ProductCard(),
      ],
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
        borderRadius: BorderRadius.circular(15),
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

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      height: 190, 
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Image box on the left
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 250, 246, 246),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                'assets/wirelessheadphones.png',
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(width: 10),

            // Product details on the right
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Wireless\nHeadphones',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 9, 14, 59),
                    ),
                  ),
                  const Text(
                    '\$59.99',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 155, 154, 154),
                    ),
                  ),

                  // ⭐ Rating Row
                  Row(
                    children: const [
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 255, 188, 64), size: 18),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 255, 188, 64), size: 18),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 255, 188, 64), size: 18),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 255, 188, 64), size: 18),
                      Icon(Icons.star,
                          color: Color.fromARGB(255, 255, 188, 64), size: 18),
                      Icon(Icons.star_half,
                          color: Color.fromARGB(255, 255, 188, 64), size: 18),
                      SizedBox(width: 8),
                      Text(
                        '4.5',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 155, 154, 154),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 6),

                  // 🔵 Tags Row
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 159, 219, 247),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          'Audio',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 159, 219, 247),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Icon(Icons.bluetooth, size: 16, color: Colors.black),
                            Text(
                              'Bluetooth',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
