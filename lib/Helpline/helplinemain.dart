import 'package:flutter/material.dart';
// import 'package:helpline/Helpline.dart';

import 'Helpline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Helpline(),
    );
  }
}
