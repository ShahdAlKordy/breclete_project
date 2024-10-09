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

    // إنشاء الأنيميشن
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // مدة الأنيميشن
    );

    // الأنيميشن بتاع التكبير التدريجي
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward(); // ابدأ الأنيميشن

    // هنتقل لأول صفحة Onboarding بعد 3 ثواني
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingScreen1()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // إنهاء الأنيميشن لما تخلص الصفحة
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4579AD),
      body: Center(
        child: FadeTransition(
          // تأثير التدريج مع التكبير
          opacity: _animation,
          child: ScaleTransition(
            scale: _animation, // اللوجو هيكبر بالتدريج
            child:
                Image.asset('assets/images/logo.png', width: 280, height: 260),
          ),
        ),
      ),
    );
  }
}
