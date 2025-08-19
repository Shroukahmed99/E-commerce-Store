import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:ecommerce_store/core/routes/app_routes.dart';
import 'package:ecommerce_store/core/language/lang_keys.dart'; // ⬅️ مهم
import 'package:flutter/material.dart';

class TestOne extends StatelessWidget {
  const TestOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.color.mainColor,
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushName(
              AppRoutes.testTwo,
            );
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 24),
          ),
          child: Text(context.translate(LangKeys.welcome)),
        ),
      ),
    );
  }
}
