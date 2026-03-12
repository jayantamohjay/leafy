import 'package:flutter/material.dart';
import 'package:leafy/core/navigation/app_router.dart';
import 'package:leafy/core/themes/light_theme.dart';
import 'package:leafy/features/searching/views/screens/searching_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   title: 'Flutter Demo',
    //   theme: AppTheme().lightTheme(),
    //   routerConfig: AppRouter.router,
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme(),
      home: PlantHomePage(),
    );
  }
}
