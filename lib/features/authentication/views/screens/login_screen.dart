import 'package:flutter/material.dart';
import 'package:leafy/features/cartManagement/views/screens/cart_screen.dart';
import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/primary_input.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        children: [
          const Text('Login Screen'),
          PrimaryInput(
            label: 'Email',
            hintText: 'Enter your email',
            controller: TextEditingController(),
          ),
          SizedBox(
            child: PrimaryButton(
              title: 'Go to Registration',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CartScreen()),
                );
              },
              isLoading: false,
            ),
          ),
        ],
      ),
    );
  }
}
