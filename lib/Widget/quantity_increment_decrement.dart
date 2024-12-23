import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class QuantityIncrementDecrement extends StatelessWidget {
  final int currentNumber;
  final Function() onAdd;
  final Function() onRemov;
  const QuantityIncrementDecrement({
    super.key,
    required this.currentNumber,
    required this.onAdd,
    required this.onRemov,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2.5,
          color: Colors.grey.shade300,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onRemov,
            icon: const Icon(Iconsax.minus),
          ),
          const SizedBox(width: 10),
          Text(
            "$currentNumber",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: onAdd,
            icon: const Icon(Iconsax.add),
          ),
        ],
      ),
    );
  }
}
