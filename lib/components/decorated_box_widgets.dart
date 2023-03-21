import 'package:flutter/material.dart';

class DecoratedBoxFillColorWidget extends StatelessWidget {
  const DecoratedBoxFillColorWidget({
    super.key,
    this.height = 7,
    this.width = 7,
    this.borderRadius,
    required this.color,
  });

  final double? height;
  final double? width;
  final double? borderRadius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius ?? 2),
          color: color,
        ),
      ),
    );
  }
}
