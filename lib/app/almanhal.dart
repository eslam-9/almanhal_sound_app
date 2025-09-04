import 'package:almanhal/core/theme/color_manager.dart';
import 'package:almanhal/core/rotuing/route.dart';
import 'package:almanhal/features/auth/presentation/screens/auht.dart';
import 'package:flutter/material.dart' hide Route;
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Almanhal extends StatelessWidget {
  const Almanhal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Almanhal',
          theme: ThemeData(primaryColor: ColorManager.primaryColor),
          onGenerateRoute: AppRoute.generateRoute,
          initialRoute: Auht.routeName,
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
