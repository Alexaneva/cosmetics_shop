import 'package:cosmetics_shop/screens/home_page/widgets/category_container.dart';
import 'package:cosmetics_shop/screens/home_page/widgets/image_slider.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../widgets/fade_animation.dart';
import 'widgets/product_carousel.dart';

class HomePage extends StatelessWidget {
  final List<Product> newProducts = [
    Product('assets/images/home_page/product1.png', 'Сыворотка Christina',
        '2300 ₽', 'Сыворотка'),
    Product('assets/images/home_page/product2.png', 'Тоник Christina', '3400 ₽',
        'Тоник'),
    Product('assets/images/home_page/product3.png', 'Крем Christina', '2000 ₽',
        'Крем'),
    Product('assets/images/home_page/product4.png', 'Гель Christina', '670 ₽',
        'Гель'),
    Product('assets/images/home_page/product5.png', 'Флюид Christina', '4600 ₽',
        'Флюид'),
  ];

  final List<Product> saleProducts = [
    Product('assets/images/home_page/product1.png', 'Сыворотка Christina',
        '1200 ₽', 'Сыворотка'),
    Product('assets/images/home_page/product2.png', 'Тоник Christina', '500 ₽',
        'Тоник'),
    Product('assets/images/home_page/product3.png', 'Крем Christina', '1600 ₽',
        'Крем'),
    Product('assets/images/home_page/product4.png', 'Гель Christina', '780 ₽',
        'Гель'),
    Product('assets/images/home_page/product5.png', 'Флюид Christina', '570 ₽',
        'Флюид'),
  ];

  final List<Product> hitProducts = [
    Product('assets/images/home_page/product1.png', 'Сыворотка Christina',
        '3900 ₽', 'Сыворотка'),
    Product('assets/images/home_page/product2.png', 'Тоник Christina', '990 ₽',
        'Тоник'),
    Product('assets/images/home_page/product3.png', 'Крем Christina', '1400 ₽',
        'Крем'),
    Product('assets/images/home_page/product4.png', 'Гель Christina', '3200 ₽',
        'Гель'),
    Product('assets/images/home_page/product5.png', 'Флюид Christina', '3100 ₽',
        'Флюид'),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ImageSlider(),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CategoryContainer(
                    'assets/images/home_page/face_sets.png', 'Наборы'),
                CategoryContainer(
                    'assets/images/home_page/face_care.png', 'Для лица'),
                CategoryContainer(
                    'assets/images/home_page/body_care.png', 'Для тела'),
                CategoryContainer(
                    'assets/images/home_page/eye_care.png', 'Для глаз'),
              ],
            ),
            const SizedBox(height: 20),
            ProductCarousel(
              title: 'Новинки',
              products: newProducts,
              gradientColors: const [
                Color(0xFFFFC0CB),
                Color(0xFFFF1493),
              ],
            ),
            ProductCarousel(
              title: 'Акции',
              products: saleProducts,
              gradientColors: const [Color(0xFFB2E0F9), Color(0xFF2196F3)],
            ),
            ProductCarousel(
              title: 'Хиты',
              products: hitProducts,
              gradientColors: const [
                Color(0xFFFF9800),
                Color(0xFFFFE0B2),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
