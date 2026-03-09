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
    this.imageWidth = 300,
    this.imageHeight = 300,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          AppImages.background,
          width: imageWidth,
          height: imageHeight,
          fit: BoxFit.cover,
        ),

        const SizedBox(height: 10),


        Text(
          label,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: AppColors.text,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}