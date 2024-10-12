import 'package:flutter/material.dart';

class OnBoardingWidget extends StatelessWidget {
  final String imagePath;
  final String blueBackgroundImagePath;
  final String title;
  final String description;
  final bool isLastPage;
  final VoidCallback onNext;
  final VoidCallback? onSkip;
  final String indecator;

  OnBoardingWidget({
    required this.indecator,
    required this.imagePath,
    required this.blueBackgroundImagePath,
    required this.title,
    required this.description,
    required this.onNext,
    this.onSkip,
    this.isLastPage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(height: 20),
            Container(
              color: Color(0xffE9F1F9),
              height: MediaQuery.of(context).size.height * 0.3,
              child: Center(
                child: Image.asset(imagePath, height: 193),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE9F1F9),
                  image: DecorationImage(
                    image: AssetImage(blueBackgroundImagePath),
                    fit: BoxFit.cover, // هذه هي الإضافة
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 170),
                          Text(
                            title,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 20),
                          Text(
                            description,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Expanded(
                          // استخدام Expanded هنا عشان يوزع المساحة بشكل صحيح
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            // عشان الأزرار تبقى في الأسفل
                            children: [
                              SizedBox(height: 150),
                              Image(
                                image: AssetImage(indecator),
                                width: 62, // هنا بتحددي العرض المطلوب
                                height: 10, // هنا بتحددي الارتفاع المطلوب
                              ),

                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // زر Skip
                                  if (onSkip != null)
                                    TextButton(
                                      onPressed: onSkip,
                                      child: Text(
                                        "Skip",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  // زر Next/Start
                                  SizedBox(
                                    width: isLastPage
                                        ? MediaQuery.of(context).size.width *
                                            0.80
                                        : null, // عرض عريض في الصفحة الأخيرة
                                    child: ElevatedButton(
                                      onPressed: onNext,
                                      style: ElevatedButton.styleFrom(
                                        foregroundColor: Colors.black,
                                        backgroundColor: Colors.white,
                                      ),
                                      child:
                                          Text(isLastPage ? "Start!" : "Next"),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 5),
                              // مسافة بين الأزرار والحافة السفلية
                            ],
                          ),
                        ),
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
