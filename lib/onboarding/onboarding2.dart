import 'package:app2/onboarding/onboarding3.dart';
import 'package:app2/onboarding/widget.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingWidget(
        imagePath: 'assets/images/on2.png',
        blueBackgroundImagePath: 'assets/images/backon.png',
        title: 'Keep Your Loved Ones Safe',
        description:
            'Stay informed about the location of your family members or anyone you care about. Our bracelet ensures you are always connected, providing real-time updates for their safety and your peace of mind.',
        onNext: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => OnBoardingScreen3()));
        },
        onSkip: () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (_) => OnBoardingScreen3())); // الانتقال لآخر صفحة
        },
      ),
    );
  }
}
