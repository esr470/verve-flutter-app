import 'package:flutter/material.dart';

class Categorys extends StatelessWidget {
  const Categorys({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      padding: const EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 9,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text),
    );
  }
}

