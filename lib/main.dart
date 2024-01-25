import 'package:bookly_app/features/Splash/presentation/view_models/views/Splash_View.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BooklyApp());
}
class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
return const GetMaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashView(),
);
  }
}