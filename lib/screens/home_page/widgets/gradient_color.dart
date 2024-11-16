import 'package:flutter/material.dart';

class GradientLine extends StatelessWidget {
  final List<Color> colors;

  const GradientLine({super.key, required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.0,
      width: 230.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
    );
  }
}
