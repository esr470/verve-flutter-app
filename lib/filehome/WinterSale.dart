import 'package:flutter/material.dart';

class WinterSale extends StatelessWidget {
  const WinterSale({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 140,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xff18185E),
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Winter Sale',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
    
            SizedBox(height: 8),
    
            Text(
              'Stay cozy with up to 40% off',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
    
            Text(
              'winter clothing and accessories',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

