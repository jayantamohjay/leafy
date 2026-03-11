import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leafy/core/navigation/app_router.dart';
import 'package:leafy/features/authentication/views/screens/login_screen.dart';
import 'dart:async';

import '../../../../core/themes/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      context.goNamed(AppRouter.loginName);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xFFE9ECEB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 210,
              width: 210,
              decoration: BoxDecoration(
                color: const Color(0xFFE6D6C9),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Center(
                child: Image.asset(
                  "assets/images/Image.png",
                  height: 220,
                  width: 220,
                ),
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Leafy",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Appcolors.primaryColor,
              ),
            ),

            const SizedBox(height: 6),

            const Text("Bring nature home", style: TextStyle(fontSize: 13)),

            const SizedBox(height: 50),

            SizedBox(
              width: 200,
              child: LinearProgressIndicator(
                value: 0.8,
                backgroundColor: Appcolors.lightGrey,
                valueColor: const AlwaysStoppedAnimation<Color>(
                  Appcolors.secondaryColor,
                ),
                minHeight: 4,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "LOADING",
              style: TextStyle(letterSpacing: 2, fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchingScreen extends StatelessWidget {
  const SearchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Searching Screen", style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
