import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.09),
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Icon(
        Icons.search,
        size: 28,
      ),
    );
  }
}