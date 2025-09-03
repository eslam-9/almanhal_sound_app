import 'package:almanhal/core/theme/color_manager.dart';
import 'package:almanhal/core/theme/font_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onpressed;
  final String text;
  const CustomButton({super.key, required this.onpressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(ColorManager.primaryColor),
        minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50.h)),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        ),
      ),
      onPressed: () {},
      child: Text(text, style: FontManager.button),
    );
  }
}
