import 'package:app2/screens/login_screen.dart';
import 'package:app2/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cura App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      initialRoute: '/',
      routes: {
        //
        '/signup': (context) => SignUpScreen(), // صفحة التسجيل
        '/login': (context) => LoginScreen(), // صفحة تسجيل الدخول
      },
    );
  }
}
