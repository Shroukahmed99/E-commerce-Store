import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomShareButton extends StatelessWidget {
  const CustomShareButton({required this.size, required this.onTap, super.key});

  final double size;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      icon: Icon(
        Icons.share,
        color: context.color.textColor,
        size: size,
      ),
    );
  }
}
