import 'package:ecommerce_store/core/common/animations/animate_do.dart';
import 'package:ecommerce_store/core/common/widgets/text_app.dart';
import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:ecommerce_store/core/language/lang_keys.dart';
import 'package:ecommerce_store/core/routes/app_routes.dart';
import 'package:ecommerce_store/core/style/fonts/font_weight_helper.dart';
import 'package:ecommerce_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:ecommerce_store/features/auth/presentation/widgets/dark_and_lang_buttons.dart';
import 'package:ecommerce_store/features/auth/presentation/widgets/login/login_button.dart';
import 'package:ecommerce_store/features/auth/presentation/widgets/login/login_text_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Dark and Language Buttons
            const DarkAndLangButtons(),
            SizedBox(height: 40.h),
            // Auth Title Info
            AuthTitleInfo(
              title: context.translate(LangKeys.login),
              description: context.translate(LangKeys.welcome),
            ),

            SizedBox(height: 30.h),
            // Login Text Form
            const LoginTextForm(),
            SizedBox(height: 30.h),
            // Login Button
            const LoginButton(),

            SizedBox(height: 20.h),

            //Go to Sign Up
            CustomFadeInDown(
              duration: 400,
              child: TextButton(
                onPressed: () {
                  context.pushReplacementNamed(AppRoutes.signUp);
                },
                child: TextApp(
                  text: context.translate(LangKeys.createAccount),
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
