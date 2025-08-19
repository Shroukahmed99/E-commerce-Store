import 'package:ecommerce_store/core/common/screens/under_build_screen.dart';
import 'package:ecommerce_store/core/routes/base_routes.dart';
import 'package:ecommerce_store/test_one.dart';
import 'package:ecommerce_store/test_three.dart';
import 'package:ecommerce_store/test_two.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String testOne = 'testOne';
  static const String testTwo = 'testTwo';
  static const String testThree = 'testThree';
  static const String underBuildScreen = 'underBuildScreen';
  
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final arg = settings.arguments;
    switch (settings.name) {
      case testOne:
        return BaseRoute(page: TestOne());
      case testTwo:
        return BaseRoute(page: TestTwo());
      case testThree:
        return BaseRoute(page: TestThree());
      case underBuildScreen:
        return BaseRoute(page: UnderBuildScreen());
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