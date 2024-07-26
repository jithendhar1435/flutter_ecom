import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  final String img;
  const CategoryWidget({
    super.key,
    required this.category,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image.asset(
            img,
            height: 60,
            fit: BoxFit.cover,
            width: 60,
          ),
        ),
        Text(
          category,
        ),
      ],
    );
  }
}
