import 'package:flutter/material.dart';
import '/core/constants/app_images.dart';
import '/core/constants/app_colors.dart';
import '/core/widgets/custom_button.dart';
import '/screens/home/home_screen.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [

            Transform.translate(
              offset: const Offset(-200, 13),
              child: Transform.scale(
                scale: 1.7,
                child: Image.asset(
                  AppImages.splash,
                  width: 740,
                  height: 746,

                ),
              ),
            ),


            Positioned(
              top: 319,
              left: 16,
              child: Text(
                "Explore\n The\n Universe",
                style: TextStyle(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: AppColors.text,
                ),
               
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.all(20),
                child: CustomButton(
                  label: "Explore",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HomeScreen()),
                    );
                  },

                ),





                
                
              ),
            )
          ],
        ),
      ),
    );
  }
}