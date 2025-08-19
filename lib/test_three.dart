import 'package:flutter/material.dart';

class TestThree extends StatelessWidget {
  const TestThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 59, 183, 255),
      appBar: AppBar(
        title: const Text("Test Three"),
        automaticallyImplyLeading: true, // يضيف سهم رجوع تلقائي
        // أو لو عايز تعملها بإيدك:
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back),
        //   onPressed: () => Navigator.pop(context),
        // ),
      ),
    );
  }
}
