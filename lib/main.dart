import 'package:ecommerce_store/core/app/connectivity_controller.dart';
import 'package:ecommerce_store/core/app/env.variables.dart';
import 'package:ecommerce_store/ecommerce_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  await EnvVariables.instace.init(envType: EnvTypeEnum.dev);
  await ConnectivityController.instance.init();

await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const EcommerceStoreApp());
  });


 
}
