import 'package:cosmetics_shop/screens/catalog_page/skin_type_page.dart';
import 'package:flutter/material.dart';

import '../widgets/fade_animation.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      delay: 3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding:
                  EdgeInsets.only(left: 16, right: 16, top: 40, bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.grey),
                  hintText: 'Поиск',
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                ),
              ),
            ),
            const SizedBox(height: 15),
            _buildListTile(context, 'Назначение'),
            _buildListTile(context, 'Тип средства'),
            _buildListTile(context, 'Тип кожи', onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SkinTypePage()),
              );
            }),
            _buildListTile(context, 'Линия косметики'),
            _buildListTile(context, 'Наборы'),
            _buildListTile(context, 'Акции'),
            _buildListTile(context, 'Консультация с косметологом'),
            const SizedBox(height: 120),
            Container(
              height: 450,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage('assets/images/back.jpg'),
                fit: BoxFit.cover,
              )),
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Составим схему идеального \nдомашнего ухода',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('10 вопросов о вашей коже'),
                  const SizedBox(height: 8.0),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black87,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Пройти тест',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(BuildContext context, String title,
      {Function()? onTap}) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      onTap: onTap,
    );
  }
}
