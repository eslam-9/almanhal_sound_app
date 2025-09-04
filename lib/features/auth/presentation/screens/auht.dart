import 'package:almanhal/core/theme/font_manager.dart';
import 'package:almanhal/features/auth/presentation/widgets/auth_body.dart';
import 'package:flutter/material.dart';

class Auht extends StatelessWidget {
  const Auht({super.key});
  static const String routeName = '/auth';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Almanhal', style: FontManager.homeTitle),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: AuthBody(),
      ),
    );
  }
}
