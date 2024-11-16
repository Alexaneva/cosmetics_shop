import 'package:cosmetics_shop/screens/catalog_page/product_page.dart';
import 'package:flutter/material.dart';

import '../widgets/fade_animation.dart';

class SkinTypePage extends StatelessWidget {
  const SkinTypePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
        delay: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('По типу кожи',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: ListView(
          children: [
            const SizedBox(height: 10),
            _buildSkinTypeTile(context, 'Жирная'),
            _buildSkinTypeTile(context, 'Комбинированная'),
            _buildSkinTypeTile(context, 'Нормальная'),
            _buildSkinTypeTile(context, 'Сухая'),
            _buildSkinTypeTile(context, 'Любой тип'),
          ],
        ),
      ),
    );
  }

  Widget _buildSkinTypeTile(BuildContext context, String skinType) {
    return ListTile(
      title: Text(skinType,
          style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 17)),
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ProductPage(skinType)));
      },
    );
  }
}
