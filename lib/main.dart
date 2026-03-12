import 'package:flutter/material.dart';
import 'package:leafy/core/navigation/app_router.dart';
import 'package:leafy/core/themes/light_theme.dart';
import 'package:leafy/features/authentication/views/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().lightTheme(),
      routerConfig: AppRouter.router,
    );
   
  }
}
