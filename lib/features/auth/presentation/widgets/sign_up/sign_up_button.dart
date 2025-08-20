import 'package:ecommerce_store/core/common/animations/animate_do.dart';
import 'package:ecommerce_store/core/common/widgets/custom_linear_button.dart';
import 'package:ecommerce_store/core/common/widgets/text_app.dart';
import 'package:ecommerce_store/core/extensions/context_extensions.dart';
import 'package:ecommerce_store/core/language/lang_keys.dart';
import 'package:ecommerce_store/core/style/images/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return       CustomFadeInRight( duration: 600,
      child: CustomLinearButton                         (
        width: MediaQuery.of(context).size.width,
           height: 50.h,
        onPressed: () {},
         child:   TextApp(
          text: context.translate(LangKeys.login),
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
         
          )),
          
          
           
        
      ),
    );
  }
}
