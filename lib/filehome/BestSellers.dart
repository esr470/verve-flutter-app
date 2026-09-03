import 'package:final_project/filehome/product_card.dart';
import 'package:final_project/filehome/product_model.dart';
import 'package:flutter/material.dart';

class BestSellers extends StatelessWidget {
  const BestSellers({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(width: 15),
    
          ProductCard(
            productModel: bestSellers[0],
          ),
    
          ProductCard(
            productModel: bestSellers[1],
          ),
    
          ProductCard(
            productModel: bestSellers[2],
          ),
        ],
      ),
    );
  }
}