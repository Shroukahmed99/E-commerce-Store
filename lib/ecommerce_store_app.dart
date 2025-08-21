import 'package:ecommerce_store/core/app/app_cubit/app_cubit.dart';
import 'package:ecommerce_store/core/app/connectivity_controller.dart';
import 'package:ecommerce_store/core/app/env.variables.dart';
import 'package:ecommerce_store/core/common/screens/no_network_screen.dart';
import 'package:ecommerce_store/core/di/injection_container.dart';
import 'package:ecommerce_store/core/language/app_localizations_setup.dart';
import 'package:ecommerce_store/core/routes/app_routes.dart';
import 'package:ecommerce_store/core/service/shared_pref/pref_keys.dart';
import 'package:ecommerce_store/core/service/shared_pref/shared_pref.dart';
import 'package:ecommerce_store/core/style/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceStoreApp extends StatelessWidget {
  const EcommerceStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        if (value) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeAppThemeMode(
                sharedMode: SharedPref().getBoolean(PrefKeys.themeMode),
              )
              ..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(360, 690),
              minTextAdapt: true,
              child: BlocBuilder<AppCubit, AppState>(
                buildWhen: (previous, current) {
                  return previous != current;
                },
                
                builder: (context, state) {
                   final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    title: "Ecommerce Store",
                    debugShowCheckedModeBanner: EnvVariables.instace.debugShow,
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: AppRoutes.login,
                   theme: cubit.isDark ? themeDark() : themeLight(),


                    locale: Locale(cubit.currentLangCode),
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    builder: (context, widget) {
                      return GestureDetector(
                        onTap: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        child: Scaffold(
                          body: Builder(
                            builder: (context) {
                              ConnectivityController.instance.init();
                              return widget!;
                            },
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          );
        } else {
          return MaterialApp(
            title: "No Network",
            debugShowCheckedModeBanner: EnvVariables.instace.debugShow,
            home: const NoNetWorkScreen(),
          );
        }
      },
    );
  }
}
