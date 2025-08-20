import 'package:ecommerce_store/core/common/screens/under_build_screen.dart';
import 'package:ecommerce_store/core/routes/base_routes.dart';
import 'package:ecommerce_store/features/auth/presentation/screens/login_screen.dart';
import 'package:ecommerce_store/features/auth/presentation/screens/sign_up_screen.dart';

import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = 'login';
  static const String signUp = 'signUp';
  // static const String testThree = 'testThree';
  static const String underBuildScreen = 'underBuildScreen';
  
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page: LoginScreen());
      case signUp:
        return BaseRoute(page: SignUpScreen());
      // case testThree:
      //   return BaseRoute(page: TestThree());
      case underBuildScreen:
        return BaseRoute(page: PageUnderBuildScreen());
      // Add more routes as needed
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Page not found')),
          ),
        );
    }
  }
}