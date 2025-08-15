import 'package:flutter/material.dart';

class EcommerceStoreApp extends StatelessWidget {
  const EcommerceStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: Scaffold(
  appBar: AppBar(title:const Text('Shopping App'),backgroundColor: Colors.deepPurple,),
  body:const Center(child:  Text('Shopping')),
),
    );
  }
}
