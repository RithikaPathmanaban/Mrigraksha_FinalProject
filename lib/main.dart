import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:mrigrakksha/MyLogin.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 20,
          splash: Container(
              height: 400,
              width: 200,
              child: Image.asset('assets/applogo.png')),
          nextScreen: MyLogin(),
          // MyLogin(),
          animationDuration: Duration(milliseconds: 4000),
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.topToBottom,
          backgroundColor: Colors.white),
      // routes: {
      //   'register': (context) => MyRegister(),
      //   'login': (context) => MyLogin(),
      // },
    );
  }
}
