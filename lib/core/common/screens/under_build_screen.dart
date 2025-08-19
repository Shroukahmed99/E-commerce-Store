import 'package:ecommerce_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class UnderBuildScreen extends StatelessWidget {
  const UnderBuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints:const BoxConstraints.expand(),
        decoration:const BoxDecoration(
          image: DecorationImage(image: AssetImage(AppImages.pageUnderBuild),
           fit: BoxFit.fill),
        ),),
     
    );
  }
}