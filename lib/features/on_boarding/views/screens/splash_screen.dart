import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:leafy/core/navigation/app_router.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();

  
}

class _SplashScreenState extends State<SplashScreen> {

@override
void initState() {
  super.initState();
  Future.delayed(Duration.zero,(){
    context.goNamed(AppRouter.loginName);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9ECEB),
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
                color: Color(0xFF1B2B22),
              ),
            ),

            const SizedBox(height: 6),
            const Text(
              "Bring nature home",
              style: TextStyle(
                fontSize: 13,
                color: Colors.black54,
              ),
            ),

            const SizedBox(height: 50),
            SizedBox(
              width: 200,
              child: LinearProgressIndicator(
                value: 0.35,
                backgroundColor: Colors.grey,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Colors.green),
                minHeight: 4,
              ),
            ),

            const SizedBox(height: 10),
            const Text(
              "LOADING",
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 11,
                color: Colors.black45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}