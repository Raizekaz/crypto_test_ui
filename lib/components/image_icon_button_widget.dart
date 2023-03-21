import 'package:flutter/material.dart';

class ImageIconButtonWidget extends StatelessWidget {
  const ImageIconButtonWidget({
    super.key,
    this.height = 20,
    this.width = 20,
    required this.icon,
    this.onTap,
  });

  final String icon;
  final double? height;
  final double? width;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      child: SizedBox(
        height: height,
        width: width,
        child: Image.asset(icon),
      ),
    );
  }
}
