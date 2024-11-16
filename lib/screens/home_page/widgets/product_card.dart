import 'package:flutter/material.dart';

import '../../../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final bool isSale;

  const ProductCard({super.key, required this.product, required this.isSale});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                  child: Image.asset(
                    product.imagePath,
                    fit: BoxFit.cover,
                    height: 150,
                  ),
                ),
                if (isSale)
                  Container(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset(
                      'assets/images/icon.png',
                      width: 10,
                      height: 10,
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 5),
            Text(
              product.category,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            Text(
              product.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              product.price,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}