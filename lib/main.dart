import 'package:flutter/material.dart';
import 'package:leafy/core/navigation/app_router.dart';
import 'package:leafy/core/themes/light_theme.dart';
import 'package:leafy/features/dashBoard/widgets/product_item.dart';
import 'package:leafy/features/dashBoard/widgets/products_card.dart';

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
      debugShowCheckedModeBanner: false,
      theme: AppTheme().lightTheme(),
      routerConfig: AppRouter.router,
    );
  }
}
