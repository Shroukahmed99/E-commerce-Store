import 'package:flutter/material.dart';

class TestTwo extends StatelessWidget {
  const TestTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 183, 255),
      appBar: AppBar(
        title: const Text("Test Three"),
        automaticallyImplyLeading: true, 
       
      ),
    );
  }
}