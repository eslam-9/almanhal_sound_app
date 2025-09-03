import 'package:almanhal/core/theme/color_manager.dart';
import 'package:almanhal/core/theme/font_manager.dart';
import 'package:almanhal/features/auth/presentation/screens/login.dart';
import 'package:almanhal/features/auth/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 65.h),
            CustomButton(
              onpressed: () {
                Navigator.pushNamed(context, Login.routeName);
              },
              text: 'Log in',
            ),

            SizedBox(height: 65.h),

            CustomButton(onpressed: () {}, text: 'sign up'),
          ],
        ),
      ),
    );
  }
}
