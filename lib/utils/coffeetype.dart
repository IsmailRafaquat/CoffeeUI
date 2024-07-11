import 'package:flutter/material.dart';

class CoffeeType extends StatelessWidget {
  final String coffeeType;
  final bool isSelected;
  final VoidCallback onTap;
  const CoffeeType({super.key,required this.coffeeType,required this.isSelected,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Text(coffeeType,
        // ignore: prefer_const_constructors
        style: TextStyle(fontWeight: FontWeight.bold,
        fontSize: 18,
        color: isSelected ? Colors.orange : Colors.white),
        ),
      ),
    );
  }
}