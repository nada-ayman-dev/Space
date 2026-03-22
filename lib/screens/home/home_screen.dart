import 'package:flutter/material.dart';
import '/core/constants/app_images.dart';
import '/core/constants/app_colors.dart';
import '/core/widgets/top_background.dart'; // الـ TopImageLabelWidget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          // الصورة فوق
          const TopImageLabelWidget(label: "Explore"),

          // النص الجديد بمواصفات التصميم
          Positioned(
            top: 165,
            left: 20,
            child: SizedBox(
              width: 286,
              height: 72,
              child: const Text(
                "Which planet would you like to explore?",
                style: TextStyle(
                  fontFamily: 'Space Grotesk',
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  fontSize: 24,
                  height: 36/24, // line-height 36px
                  letterSpacing: -0.03, // -3%
                  color: AppColors.text,
                ),
              ),
            ),
          ),
          SizedBox(),

          // زرار Explore (مثال)
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttons,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(29),
                  ),
                ),
                child: const Text(
                  "Explore Earth",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}