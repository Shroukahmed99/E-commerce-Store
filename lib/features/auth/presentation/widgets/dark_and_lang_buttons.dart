import 'package:ecommerce_store/core/app/app_cubit/app_cubit.dart';
import 'package:ecommerce_store/core/common/animations/animate_do.dart';
import 'package:ecommerce_store/core/common/widgets/custom_linear_button.dart';
import 'package:ecommerce_store/core/language/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DarkAndLangButtons extends StatelessWidget {
  const DarkAndLangButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit =context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Dark Mode Button
        BlocBuilder<AppCubit, AppState>(
          builder: (context, state) {
            return CustomFadeInLeft(
              duration: 400,
              child: CustomLinearButton(
               onPressed: () => cubit.changeAppThemeMode(),

                child: cubit.isDark
                    ? const Icon(Icons.dark_mode)
                    : const Icon(Icons.light_mode),
            ),
            );
          },
        ),

        // Language Change Button
        CustomFadeInRight(
          duration: 400,
          child: CustomLinearButton(
            onPressed: () {
              if(AppLocalizations.of(context)!.isEnLocale) {
                cubit.toArabic();
              } else {
                cubit.toEnglish();
              }
            },   
            child: const Icon(Icons.language),
          ),
        ),
      ],
    );
  }
}
