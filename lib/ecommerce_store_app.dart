import 'package:ecommerce_store/core/app/connectivity_controller.dart';
import 'package:ecommerce_store/core/app/env.variables.dart';
import 'package:ecommerce_store/core/common/screens/no_network_screen.dart';
import 'package:ecommerce_store/core/style/images/fonts/font_family_helper.dart';
import 'package:ecommerce_store/core/style/images/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EcommerceStoreApp extends StatelessWidget {
  const EcommerceStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return ValueListenableBuilder(
          valueListenable: ConnectivityController.instance.isConnected,
          builder: (_, value, __) {
            if (value) {
              return MaterialApp(
                title: "Ecommerce Store",
                debugShowCheckedModeBanner: EnvVariables.instace.debugShow,
                home: Scaffold(
                  appBar: AppBar(
                    title: const Text("Shopping"),
                    backgroundColor: Colors.blue,
                  ),
                  body: Center(
                    child: Column(
                      children: [
                        //old
                        Text(
                          'مرحبا بكم في متجرنا الالكتروني',
                          style: TextStyle(fontSize: 25.sp ),
                        ),
                        Text(
                          'Welcome to Ecommerce Store!',
                          style: TextStyle(fontSize: 20.sp),
                        ),
// new

Text(
                          'مرحبا بكم في متجرنا الالكتروني',
                          style: TextStyle(fontSize: 25.sp ,
                          fontFamily: FontFamilyHelper.cairoArabic ,
                          fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Welcome to Ecommerce Store!',
                          style: TextStyle(fontSize: 20.sp,fontFamily: FontFamilyHelper.poppinsEnglish ,
                          fontWeight: FontWeightHelper.regular),
                          ),
                          Text(
                          'Welcome to Ecommerce Store!',
                          style: TextStyle(fontSize: 20.sp,fontFamily: FontFamilyHelper.poppinsEnglish ,
                          fontWeight: FontWeightHelper.medium),
                          ),
                      





                      ],
                    ),
                  ),
                ),
              );
            } else {
              return MaterialApp(
                title: "No Network",
                debugShowCheckedModeBanner: EnvVariables.instace.debugShow,
                home: const NoNetworkScreen(),
              );
            }
          },
        );
      },
    );
  }
}
