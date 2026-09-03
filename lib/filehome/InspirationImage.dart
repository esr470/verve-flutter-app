import 'package:flutter/material.dart';

class InspirationImage extends StatelessWidget {
  const InspirationImage({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 150,
      margin: const EdgeInsets.only(right: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

