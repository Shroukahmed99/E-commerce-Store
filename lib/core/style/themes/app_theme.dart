import 'package:ecommerce_store/core/style/colors/colors_dark.dart';
import 'package:ecommerce_store/core/style/colors/colors_light.dart';
import 'package:ecommerce_store/core/style/themes/assets_extension.dart';
import 'package:ecommerce_store/core/style/themes/color_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
    useMaterial3: true,
    textTheme:const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsDark.white,
        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    useMaterial3: true,
    textTheme:const TextTheme(
      displaySmall: TextStyle(
        fontSize: 14,
        color: ColorsLight.black,
        // fontFamily: FontFamilyHelper.geLocalozedFontFamily(),
      ),
    ),
  );

}
