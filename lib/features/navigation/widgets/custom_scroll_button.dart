import 'package:flutter/material.dart';
import '../../../globalVariables.dart';

class CustomScrollButton extends StatelessWidget {
  const CustomScrollButton({
    super.key,
    this.iconData,
    required this.title,
    required this.color,
  });

  final IconData? iconData;
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: color,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: GlobalVariables.backgroundColor,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: GlobalVariables.backgroundColor),
          ),
        ],
      ),
    );
  }
}
