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
            'Track your overall health effortlessly with our smart bracelet. Get real-time insights into your vital signs to stay informed and maintain a healthy lifestyle',
        onNext: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => OnBoardingScreen2()));
        },
        onSkip: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => OnBoardingScreen3()));
        },
        indecator: 'assets/images/indecator1.png',
      ),
    );
  }
}
