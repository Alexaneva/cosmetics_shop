import 'package:flutter/material.dart';
import '../../../models/product.dart';
import 'gradient_color.dart';
import 'product_card.dart';

class ProductCarousel extends StatelessWidget {
  final String title;
  final List<Product> products;
  final List<Color> gradientColors;

  const ProductCarousel({
    super.key,
    required this.title,
    required this.products,
    required this.gradientColors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 8),
          child: Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GradientLine(
            colors: gradientColors,
          ),
        ),
        const SizedBox(height: 7),
        SizedBox(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(
                product: products[index],
                isSale: title == 'Акции',
              );
            },
          ),
        ),
      ],
    );
  }
}
