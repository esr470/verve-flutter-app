import 'package:flutter/material.dart';

class HomeCategory extends StatelessWidget {
  const HomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'All',
      'Deals',
      'Clothes',
      'Shoes',
      'Sports',
    ];

    return SizedBox(
      height: 40,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (context, index) {
          return const SizedBox(width: 8);
        },
        itemBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 9,
            ),
            decoration: BoxDecoration(
              color: index == 0
                  ? Colors.black
                  : Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              categories[index],
              style: TextStyle(
                color: index == 0
                    ? Colors.white
                    : Colors.black,
                fontSize: 12,
              ),
            ),
          );
        },
      ),
    );
  }
}