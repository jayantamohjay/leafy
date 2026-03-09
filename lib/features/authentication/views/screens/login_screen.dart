import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/primary_input.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Scaffold(
        body: Column(
          children: [
            Text('Login Screen'),
            PrimaryInput(
              label: 'Email',
              hintText: 'Enter your email',
              controller: TextEditingController(),
            ),
             PrimaryInput(
              label: 'Password',
              hintText: 'Enter your password',
              controller: TextEditingController(),
            ),
            SizedBox(
              child: PrimaryButton(
                title: 'Go to Registration',
                onPressed: () {},
                isLoading: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
