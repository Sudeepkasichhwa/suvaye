import 'package:flutter/material.dart';

class OutlineCard extends StatelessWidget {
  final IconData iconName;
  final String outlineText;
  final Color backgroundColor;
  const OutlineCard({
    super.key,
    required this.iconName,
    required this.outlineText,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(iconName),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              outlineText,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
