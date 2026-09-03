import 'package:flutter/material.dart';
import 'product_card.dart';
import 'product_model.dart';

class Outdoor extends StatelessWidget {
  const Outdoor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xff155B1B),
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Outdoors',
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 5),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Gear up for your next adventure',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),

          const SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=900',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 15),

                ProductCard(
                  productModel: outdoorsProducts[0],
                ),

                ProductCard(
                  productModel: outdoorsProducts[1],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}