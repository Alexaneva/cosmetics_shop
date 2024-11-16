import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset(product.imagePath, fit: BoxFit.cover, height: 100),
          const SizedBox(height: 5),
          Text(product.name,
              style: const TextStyle(fontWeight: FontWeight.bold)),
          Text(product.price, style: const TextStyle(color: Colors.green)),
        ],
      ),
    );
  }
}
