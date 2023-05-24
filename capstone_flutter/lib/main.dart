import 'package:capstone_flutter/view/menu_utama/home.dart';
import 'package:capstone_flutter/view/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 800),
      builder: (_, child) {
        return MaterialApp(
          title: 'balink',
          debugShowCheckedModeBanner: false,
          home: child,
        );
      },
      child: LoginScreen(),
      // home: HomePageScreen(),
    );
  }
}
