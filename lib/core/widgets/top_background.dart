import 'package:flutter/material.dart';
import '/core/constants/app_images.dart';
import '/core/constants/app_colors.dart';

class TopImageLabelWidget extends StatelessWidget {
  final String label;
  final double imageWidth;
  final double imageHeight;

  const TopImageLabelWidget({
    super.key,
    required this.label,
    this.imageWidth = 375,
    this.imageHeight = 237,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: SizedBox(
        width: imageWidth,
        height: imageHeight,
        child: Stack(
          children: [
            Image.asset(
              AppImages.background,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),

            Positioned(
              top: 26,
              left: 147,
              child: SizedBox(
                width: 83,
                height: 36,
                child: Text(
                  label,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: AppColors.text,
                  ),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}