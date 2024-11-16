import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Фильтры'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FilterOption(
              title: 'Сортировка',
              value: 'По популярности',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            FilterOption(
              title: 'Тип кожи',
              value: 'Жирная',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            FilterOption(
              title: 'Тип средства',
              value: 'Все',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            FilterOption(
              title: 'Проблема кожи',
              value: 'Не выбрано',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            FilterOption(
              title: 'Эффект средства',
              value: 'Увлажнение',
              onPressed: () {},
            ),
            SizedBox(height: 16),
            FilterOption(
              title: 'Линия косметики',
              value: 'Все',
              onPressed: () {},
            ),
            Spacer(),
            Container(
                width: 500,
                height: 55,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Применить фильтры',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ))),
          ],
        ),
      ),
    );
  }
}

class FilterOption extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback onPressed;

  const FilterOption({
    Key? key,
    required this.title,
    required this.value,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          SizedBox(width: 20),
          Text(
            value,
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
