// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:mrigrakksha/MyLogin.dart';
// // import 'package:splashscreen/splashscreen.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Splash Screen',
// //       theme: ThemeData(
// //         primarySwatch: Colors.green,
// //       ),
// //       home: Splash2(),
// //       debugShowCheckedModeBanner: false,
// //     );
// //   }
// // }

// // class Splash2 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SplashScreen(
// //       seconds: 1,
// //       // navigateAfterSeconds: new MyApp(),
// //       title: new Text(
// //         'GeeksForGeeks',
// //         textScaleFactor: 2,
// //       ),
// //       image: Image.asset('splash screen.png'),
// //       // loadingText: Text("Loading"),
// //       photoSize: 100.0,
// //       loaderColor: Colors.blue,
// //     );
// //   }
// // }

// // // class SecondScreen extends StatelessWidget {
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       debugShowCheckedModeBanner: false,
// // //       home: MyLogin(),
// // //       routes: {
// // //         'register': (context) => MyRegister(),
// // //         'login': (context) => MyLogin(),
// // //       },
// // //     );
// // //   }
// // // }
// import 'dart:async';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => SecondScreen())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         color: Colors.white,
//         child: FlutterLogo(size: MediaQuery.of(context).size.height));
//   }
// }

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("GeeksForGeeks")),
//       body: Center(
//           child: Text(
//         "Home page",
//         textScaleFactor: 2,
//       )),
//     );
//   }
// }
// import 'package:animated_splash_screen/animated_splash_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:mrigrakksha/MyLogin.dart';

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: AnimatedSplashScreen(
//           duration: 900,
//           splash: Image(
//               image: AssetImage(
//             'assets/splash screen.png',
//           )),
//           nextScreen: MyLogin(),
//           animationDuration: Duration(milliseconds: 1050),
//           splashTransition: SplashTransition.fadeTransition,
//           // pageTransitionType: PageTransitionType.topToBottom,
//           backgroundColor: Colors.white),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }
