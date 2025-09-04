import 'package:almanhal/core/theme/color_manager.dart';
import 'package:almanhal/core/theme/font_manager.dart';
import 'package:almanhal/features/auth/domain/use%20case/vlaid_email_use_case.dart';
import 'package:almanhal/features/auth/presentation/widgets/custom_button.dart';
import 'package:almanhal/features/auth/presentation/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  static const String routeName = '/login';
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Log In', style: FontManager.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email or Username', style: FontManager.black18w400),
                SizedBox(height: 12.h),
                CustomFormField(
                  validator: (value) {
                    final validEmail = VlaidEmailUseCase().call(
                      value.toString(),
                    );

                    if (value == null || value.isEmpty) {
                      return "email cannot be empety ";
                    } else if (!validEmail.isvalid) {
                      return "it's not valid email";
                    }
                    return null;
                  },
                  hintText: "email",
                  obscureText: false,
                  controller: _email,
                ),
                SizedBox(height: 28.h),
                Text('Password', style: FontManager.black18w400),
                SizedBox(height: 12.h),
                CustomFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "pass cannot be empety ";
                    } else {
                      return null;
                    }
                  },
                  hintText: 'password',
                  obscureText: true,
                  controller: _password,
                ),
                SizedBox(height: 12.h),
                Text(
                  'Password must be at least 8 characters',
                  style: FontManager.descreption,
                ),
                SizedBox(height: 32.h),
                CustomButton(
                  onpressed: () {
                    if (_formKey.currentState!.validate()) {}
                  },
                  text: 'Sign In',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
