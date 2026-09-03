import 'package:final_project/filehome/product_card.dart';
import 'package:final_project/filehome/product_model.dart';
import 'package:flutter/material.dart';

class Jackets extends StatelessWidget {
  const Jackets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Row(
        children: [
          Expanded(
            child: ProductCard(
              productModel: jackets[0],
            ),
          ),
    
          const SizedBox(width: 12),
    
          Expanded(
            child: ProductCard(
              productModel: jackets[1],
            ),
          ),
        ],
      ),
    );
  }
}