import 'package:app2/onboarding/widget.dart';
import 'package:flutter/material.dart';

import '../screens/login_screen.dart';

class OnBoardingScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingWidget(
        imagePath: 'assets/images/on3.png',
        blueBackgroundImagePath: 'assets/images/backon.png',
        title: 'Monitor Your Pet!',
        description:
            'Keep an eye on your pet’s health and whereabouts. With our bracelet, you’ll always know where they are and how they’re feeling.',
        onNext: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) =>
                  LoginScreen())); // الانتقال لصفحة التطبيق الأساسية
        },
        isLastPage: true, // عشان نخلي الزر يظهر كـ "Start!"
      ),
    );
  }
}
