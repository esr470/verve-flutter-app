import 'package:final_project/filehome/InspirationImage.dart';
import 'package:flutter/material.dart';

class Inspirationalsecond extends StatelessWidget {
  const Inspirationalsecond({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff3530A3),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              'Inspirational',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
    
          const SizedBox(height: 15),
    
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 15),
    
                InspirationImage(image: 'https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?w=500'),
    
                InspirationImage(image: 'https://images.unsplash.com/photo-1556821840-3a63f95609a7?w=500'),
    
                InspirationImage(image: 'https://images.unsplash.com/photo-1548883354-7622d03aca27?w=500'),
    
                InspirationImage(image: 'https://images.unsplash.com/photo-1550259979-ed79b48d2a5a?w=500'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}