import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/primary_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              color: Appcolors.green.withAlpha(40),
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.spa,
              color: Appcolors.secondaryColor,
              size: 30,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Welcome back',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Text(
            'Please enter your details to signin',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 290,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  // Text('Login Screen'),
                  PrimaryInput(
                    label: 'Email Address',
                    hintText: 'hello@example.com',
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 15),
                  PrimaryInput(
                    label: 'Password',
                    hintText: '.........',
                    obscureText: true,
                    suffixIcon: InkWell(
                      onTap: () {},
                      child: Icon(
                        Icons.remove_red_eye_outlined,
                        color: Colors.grey,
                      ),
                    ),
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 13),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //  Text('Forgot password?',style:TextStyle(fontWeight: FontWeight.bold) ,),
          SizedBox(height: 25),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[900],
              minimumSize: Size(350, 60),
            ),
            onPressed: () {
              context.goNamed(AppRouter.dashboardName);
            },
            child: Text(
              'Login',
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.grey),
              ),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRouter.registrationName);
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
