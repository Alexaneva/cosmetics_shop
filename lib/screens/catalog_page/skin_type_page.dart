import 'package:cosmetics_shop/screens/catalog_page/product_page.dart';
import 'package:flutter/material.dart';

class SkinTypePage extends StatelessWidget {
  const SkinTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Тип кожи')),
      body: ListView(
        children: [
          _buildSkinTypeTile(context, 'Жирная'),
          _buildSkinTypeTile(context, 'Комбинированная'),
          _buildSkinTypeTile(context, 'Нормальная'),
          _buildSkinTypeTile(context, 'Сухая'),
          _buildSkinTypeTile(context, 'Любой тип'),
        ],
      ),
    );
  }

  Widget _buildSkinTypeTile(BuildContext context, String skinType) {
    return ListTile(
      title: Text(skinType),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductPage(skinType)));
      },
    );
  }
}
