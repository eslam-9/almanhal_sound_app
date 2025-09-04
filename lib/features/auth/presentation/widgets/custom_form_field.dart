import 'package:almanhal/core/theme/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFormField extends StatelessWidget {
  final FormFieldValidator<String> validator;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  const CustomFormField({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56.h,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.r),
            borderSide: BorderSide.none,
          ),

          hintText: hintText,
          filled: true,
          fillColor: ColorManager.formColor,
          contentPadding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
