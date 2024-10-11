import 'dart:async';

import 'package:flutter/material.dart';

import 'onboarding/onboarding1.dart'; // أول صفحة Onboarding

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();

    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingScreen1()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4579AD),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: ScaleTransition(
            scale: _animation,
            child:
                Image.asset('assets/images/logo.png', width: 280, height: 260),
          ),
        ),
      ),
    );
  }
}
///////////////////////
// import 'dart:async';
// import 'package:flutter/material.dart';
// import 'onboarding/onboarding1.dart';
//
// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//
//     // نستخدم الـ Timer للانتقال للصفحة التالية بعد 5 ثواني
//     Timer(Duration(seconds: 5), () {
//       Navigator.of(context).pushReplacement(
//         MaterialPageRoute(builder: (_) => OnBoardingScreen1()),
//       );
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff4579AD),
//       body: Center(
//         child: Image.asset(
//           'assets/images/logo.png',
//           width: 280,
//           height: 260,
//         ), // عرض الصورة بشكل مباشر بدون أنيميشن
//       ),
//     );
//   }
// }
