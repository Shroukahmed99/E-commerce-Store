import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:ecommerce_store/features/auth/presentation/refactors/auth_custom_painter.dart';
import 'package:ecommerce_store/features/auth/presentation/refactors/sign_up_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(MediaQuery.of(context).size.width, 75.sp),
painter: AuthCustomPainter(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
             context.color.bluePinkLight!,
              context.color.bluePinkLight!,
               context.color.bluePinkLight!,
              context.color.bluePinkDark!,
            ],
          ),
        ),
      ),


      body: const SafeArea(
        bottom: false,
        child:   SignUpBody()),
    );
  }
}