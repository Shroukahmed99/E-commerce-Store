import 'package:ecommerce_store/core/app/connectivity_controller.dart';
import 'package:ecommerce_store/core/app/env.variables.dart';
import 'package:ecommerce_store/core/common/screens/no_network_screen.dart';
import 'package:flutter/material.dart';

class EcommerceStoreApp extends StatelessWidget {
  const EcommerceStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, _) {
        if (value) {
          return MaterialApp(
            title: "Ecommerce Store",
            debugShowCheckedModeBanner: EnvVariables.instace.debugShow,
            // builder: (context, widget) {
            //   ConnectivityController.instance.init();
            //   return widget!;
            // },
           home: Scaffold(
  appBar: AppBar(
    title: const Text("Shopping"),
    backgroundColor: Colors.blue,
  ),
  body: const Center(
    child: Text('Welcome to Ecommerce Store!'),
  ),
)

          );
        } else {
          return MaterialApp(
            title: "No Network ",
            debugShowCheckedModeBanner: EnvVariables.instace.debugShow,
            home: const NoNetworkScreen(),
          );
        }
        ;
      },
    );
  }
}
