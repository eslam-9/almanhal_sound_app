import 'package:almanhal/features/auth/presentation/screens/auht.dart';
import 'package:almanhal/features/auth/presentation/screens/login.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Auht.routeName:
        return MaterialPageRoute(builder: (context) => const Auht());
      case Login.routeName:
        return MaterialPageRoute(builder: (context) => const Login());
      default:
        return MaterialPageRoute(builder: (context) => const Placeholder());
    }
  }
}
