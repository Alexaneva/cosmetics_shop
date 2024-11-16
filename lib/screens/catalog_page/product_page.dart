import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductPage extends StatelessWidget {
  final String skinType;

  final List<Product> products = [
    Product('assets/images/product_page/product1.png', 'Сыворотка', 'Название',
        '₽2300'),
    Product('assets/images/product_page/product2.png', 'Тоник', 'Название',
        '₽3400'),
    Product(
        'assets/images/product_page/product3.png', 'Крем', 'Название', '₽2000'),
    Product(
        'assets/images/product_page/product4.png', 'Гель', 'Название', '₽670'),
    Product('assets/images/product_page/product5.png', 'Флюид', 'Название',
        '₽4600'),
    Product('assets/images/product_page/product6.png', 'Маска', 'Название',
        '₽2600'),
  ];

  ProductPage(this.skinType, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Средства для $skinType кожи')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${products.length} продуктов',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(width: 50),
                IconButton(
                    icon: const Icon(Icons.filter_list), onPressed: () {}),
              ],
            ),
          ),
          _buildProductCategoryCarousel(
              ['Очищение', 'Увлажнение', 'Регенерация', 'Питание']),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.7, // Соотношение сторон карточек
              ),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10)),
                        child: Image.asset(product.imagePath,
                            fit: BoxFit.cover,
                            height: 120,
                            width: double.infinity),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(product.name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(product.price,
                            style: const TextStyle(
                                fontSize: 14, color: Colors.grey)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCategoryCarousel(List<String> categories) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blueAccent,
            ),
            child: Center(
                child: Text(categories[index],
                    style: const TextStyle(color: Colors.white))),
          );
        },
      ),
    );
  }
}
