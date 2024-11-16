import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String imagePath;
  final String title;

  const CategoryContainer(this.imagePath, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 5),
        Text(title),
      ],
    );
  }
}
