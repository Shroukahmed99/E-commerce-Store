import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:flutter/material.dart';

class CustomFavoriteButton extends StatelessWidget {
  const CustomFavoriteButton({
    required this.size,
    required this.isFavorites,
    required this.onTap,
    super.key,
  });

  final double size;
  final bool isFavorites;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      padding: EdgeInsets.zero,
      icon: Icon(
        isFavorites ? Icons.favorite : Icons.favorite_outline,
        color:
            isFavorites ? context.color.bluePinkLight : context.color.textColor,
        size: size,
      ),
    );
  }
}
