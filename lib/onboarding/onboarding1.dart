import 'package:app2/onboarding/onboarding2.dart';
import 'package:app2/onboarding/onboarding3.dart';
import 'package:app2/onboarding/widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingWidget(
        imagePath: 'assets/images/on1.png',
        blueBackgroundImagePath: 'assets/images/backon.png',
        // الخلفية الزرقاء للنص
        title: 'Monitor Your Health',
        description:
            'Effortlessly track your health with our smart bracelet...',
        onNext: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => OnBoardingScreen2()));
        },
        onSkip: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => OnBoardingScreen3())); // الانتقال لآخر صفحة
        },
      ),
    );
  }
}
