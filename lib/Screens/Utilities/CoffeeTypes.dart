import 'package:flutter/material.dart';

GestureDetector typeMethod(String s, bool isSelected) {
  return GestureDetector(
    // onTap: coffeeTypeSelected(index),
    child: Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text(
        s,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.orange : Colors.white,
        ),
      ),
    ),
  );
}
