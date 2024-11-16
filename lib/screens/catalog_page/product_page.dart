import 'package:flutter/material.dart';

import '../../models/product.dart';
import 'package:cosmetics_shop/screens/catalog_page/filter_page.dart';

class ProductPage extends StatefulWidget {
  final String skinType;

  ProductPage(this.skinType, {super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _selectedIndex = -1;

  void _onCategoryTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  String getSkincarePhrase(String skinType) {
    switch (skinType.toLowerCase()) {
      case 'жирная':
        return 'для жирной кожи';
      case 'сухая':
        return 'для сухой кожи';
      case 'нормальная':
        return 'для нормальной кожи';
      case 'комбинированная':
        return 'для комбинированной кожи';
      case 'любой тип кожи':
        return 'для любого типа кожи';
      default:
        return 'для кожи';
    }
  }

  final List<Product> products = [
    Product('assets/images/product_page/product1.png', 'Сыворотка', '₽2300',
        'Сыворотка Christina'),
    Product('assets/images/product_page/product2.png', 'Тоник', '₽3400',
        'Тоник Christina'),
    Product('assets/images/product_page/product3.png', 'Крем', '₽2000',
        'Крем Christina'),
    Product('assets/images/product_page/product4.png', 'Гель', '₽670',
        'Гель Christina'),
    Product('assets/images/product_page/product5.png', 'Флюид', '₽4600',
        'Флюид Christina'),
    Product('assets/images/product_page/product6.png', 'Маска', '₽2600',
        'Маска Christina'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Средства\n${getSkincarePhrase(widget.skinType)}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${products.length} продуктов',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(width: 50),
                IconButton(
                    icon: const Icon(Icons.tune),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FilterPage()));
                    }),
              ],
            ),
          ),
          _buildProductCategoryCarousel(
              ['Очищение', 'Увлажнение', 'Регенерация', 'Питание']),
          const SizedBox(height: 5),
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
                      const SizedBox(height: 5),
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(10)),
                        child: Image.asset(product.imagePath,
                            fit: BoxFit.contain,
                            height: 190,
                            width: double.infinity),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          product.category,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: Text(
                          product.name,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 7.0),
                        child: Text(
                          product.price,
                          style:
                              const TextStyle(fontSize: 14, color: Colors.grey),
                        ),
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
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          bool isSelected = index == _selectedIndex;
          return GestureDetector(
            onTap: () => _onCategoryTap(index),
            child: Container(
              width: 100,
              margin: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isSelected ? Colors.black : Colors.grey[200],
              ),
              child: Center(
                  child: Text(categories[index],
                      style: TextStyle(
                          color: isSelected ? Colors.white : Colors.black))),
            ),
          );
        },
      ),
    );
  }
}
