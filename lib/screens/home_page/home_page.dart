import 'package:cosmetics_shop/screens/home_page/widgets/category_container.dart';
import 'package:cosmetics_shop/screens/home_page/widgets/image_slider.dart';
import 'package:flutter/material.dart';

import '../../models/product.dart';
import '../widgets/fade_animation.dart';
import 'widgets/product_carousel.dart';

class HomePage extends StatelessWidget {
  final List<Product> newProducts = [
    Product('assets/images/home_page/product1.png', 'Сыворотка', 'Название',
        '₽2300'),
    Product(
        'assets/images/home_page/product2.png', 'Тоник', 'Название', '₽3400'),
    Product(
        'assets/images/home_page/product3.png', 'Крем', 'Название', '₽2000'),
    Product('assets/images/home_page/product4.png', 'Гель', 'Название', '₽670'),
    Product(
        'assets/images/home_page/product5.png', 'Флюид', 'Название', '₽4600'),
  ];

  final List<Product> saleProducts = [
    Product('assets/images/home_page/product1.png', 'Сыворотка', 'Название',
        '₽1200'),
    Product(
        'assets/images/home_page/product2.png', 'Тоник', 'Название', '₽500'),
    Product(
        'assets/images/home_page/product3.png', 'Крем', 'Название', '₽1600'),
    Product('assets/images/home_page/product4.png', 'Гель', 'Название', '₽780'),
    Product(
        'assets/images/home_page/product5.png', 'Флюид', 'Название', '₽570'),
  ];

  final List<Product> hitProducts = [
    Product('assets/images/home_page/product1.png', 'Сыворотка', 'Название',
        '₽3900'),
    Product(
        'assets/images/home_page/product2.png', 'Тоник', 'Название', '₽990'),
    Product(
        'assets/images/home_page/product3.png', 'Крем', 'Название', '₽1400'),
    Product(
        'assets/images/home_page/product4.png', 'Гель', 'Название', '₽3200'),
    Product(
        'assets/images/home_page/product5.png', 'Флюид', 'Название', '₽3100'),
  ];

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FadeAnimation(
      delay: 3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImageSlider(),
            SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategoryContainer('assets/images/home_page/face_sets.png', 'Наборы'),
                    CategoryContainer('assets/images/home_page/face_care.png', 'Для лица'),
                    CategoryContainer('assets/images/home_page/body_care.png', 'Для тела'),
                    CategoryContainer('assets/images/home_page/eye_care.png', 'Для глаз'),
                  ],
                ),
            //     ProductCarousel(title: 'Новинки', products: newProducts),
            //     ProductCarousel(title: 'Акции', products: saleProducts),
            //     ProductCarousel(title: 'Хиты', products: hitProducts),


          ],
        ),
      ),
    );
  }
}
