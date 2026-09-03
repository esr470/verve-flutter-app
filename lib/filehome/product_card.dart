import 'package:flutter/material.dart';
import 'product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel productModel;

  const ProductCard({
    super.key,
    required this.productModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: 160,
            height: 190,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
            ),
            child: Image.network(
              productModel.image,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: 6),

          
          Text(
            productModel.brand,
            style: const TextStyle(
              fontSize: 11,
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 3),

         
          Text(
            productModel.productName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 13,
            ),
          ),

          const SizedBox(height: 4),

         
          Row(
            children: [

              if (productModel.discount)
                Text(
                  '\$${productModel.oldPrice}',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),

              const SizedBox(width: 7),

              Text(
                '\$${productModel.price}',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: productModel.discount
                      ? Colors.red
                      : Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}