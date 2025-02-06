import 'package:flutter/material.dart';
import 'package:mobileapp/models/food.dart';

class MyQuantitySelector extends StatelessWidget {

  final int  quantity;
  final Food food;
  final VoidCallback onIcrement;
  final VoidCallback onDecrement;

  const MyQuantitySelector({
    super.key,
    required this.quantity,
    required this.food,
    required this.onIcrement,
    required this.onDecrement,
    });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}