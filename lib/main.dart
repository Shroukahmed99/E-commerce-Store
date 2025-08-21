import 'package:ecommerce_store/core/app/bloc_observer.dart';
import 'package:ecommerce_store/core/app/connectivity_controller.dart';
import 'package:ecommerce_store/core/app/env.variables.dart';
import 'package:ecommerce_store/core/di/injection_container.dart';
import 'package:ecommerce_store/core/service/shared_pref/shared_pref.dart';
import 'package:ecommerce_store/ecommerce_store_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialize Firebase
  await Firebase.initializeApp();
  // Initialize Shared Preferences and Environment Variables
 await SharedPref().instantiatePreferences();
  // Initialize Environment Variables
  await EnvVariables.instace.init(envType: EnvTypeEnum.dev);
  // Initialize Connectivity Controller
  await ConnectivityController.instance.init();
  // Set Bloc Observer 
 Bloc.observer = AppBlocObserver();
  // Initialize Shared Preferences
 await SharedPref().instantiatePreferences();
  // Set up Dependency Injection
 await setupInjector();
  // Set preferred orientations
await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp],
  ).then((_) {
    runApp(const EcommerceStoreApp());
  });


 
}
