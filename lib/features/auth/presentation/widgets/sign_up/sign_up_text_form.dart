import 'package:ecommerce_store/core/common/animations/animate_do.dart';
import 'package:ecommerce_store/core/common/widgets/custom_text_field.dart';
import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:ecommerce_store/core/language/lang_keys.dart';
import 'package:ecommerce_store/core/utils/app_regex.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpTextForm extends StatefulWidget {
  const SignUpTextForm({super.key});
 

  @override
  State<SignUpTextForm> createState() => _SignUpTextFormState();
}

class _SignUpTextFormState extends State<SignUpTextForm> {
    bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // Email Text Field
          CustomFadeInLeft(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.fullName),
              keyboardType: TextInputType.name,
               validator: (value) {
                if (value == null || value.isEmpty || value.length < 2) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 25.h),

          // Email Text Field
          CustomFadeInLeft(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.email),
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid("")) {
                  return context.translate(LangKeys.validEmail);
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 25.h),
      
          // Password Text Field
          CustomFadeInLeft(
            duration: 200,
            child: CustomTextField(
              controller: TextEditingController(),
              hintText: context.translate(LangKeys.password),
              obscureText: isShowPassword,
             suffixIcon : IconButton(
              onPressed: () {
                setState(() {
                  isShowPassword = !isShowPassword;
                });
              },
              icon: isShowPassword
                  ? const Icon(Icons.visibility)
                  : const Icon
             (Icons.visibility_off),
             color: context.color.textColor,
             
            ),
             keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null || value.isEmpty || value.length < 6) {
                  return context.translate(LangKeys.validPasswrod);
                }
                return null;
              },
             
          ),),
        ],
      ),
    );
  }
}
