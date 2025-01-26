import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:habbibi_2/routes/app_routes.dart';
import 'package:habbibi_2/views/auth/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: true,
          defaultTransition: Transition.fade,
          theme: ThemeData(
            textTheme: const TextTheme(),
            inputDecorationTheme: _inputDecorationTheme(),
            elevatedButtonTheme: _elevatedButtonThemeData(),
          ),
          title: 'Habibi_2',
          home: LoginScreen(),
        );
      },
    );
  }
}

ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      fixedSize: Size(40, 30),
      backgroundColor:  Colors.blueGrey,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    fillColor: Colors.black54,
    filled: true,
    hintStyle: const TextStyle(fontWeight: FontWeight.w300),
    border: _inputBorder(),
    enabledBorder: _inputBorder(),
    errorBorder: _inputBorder(),
    focusedBorder: _inputBorder(),
  );
}

OutlineInputBorder _inputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(2),
  );
}
