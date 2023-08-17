import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool isActive;
  const Indicator({
    super.key,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 22.0 : 8.0,
      height: 8.0,
      decoration: BoxDecoration(
          color: Colors.grey, borderRadius: BorderRadius.circular(8.0)),
    );
  }
}