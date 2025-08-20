import 'package:ecommerce_store/core/common/animations/animate_do.dart';
import 'package:ecommerce_store/core/common/widgets/custom_linear_button.dart';
import 'package:flutter/material.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button
       CustomFadeInLeft(
        duration: 400,
        child: CustomLinearButton(onPressed: (){}, child:const Icon(Icons.dark_mode))),

         // Language Change Button
         CustomFadeInRight(
        duration: 400,
       child: CustomLinearButton(onPressed: (){}, child:const Icon(Icons.language)),
         ),
      ],
    );
  }
}
