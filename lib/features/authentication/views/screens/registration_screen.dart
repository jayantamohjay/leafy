import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:leafy/features/authentication/views/screens/login_screen.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/primary_input.dart';

class RegistrationScreen extends StatefulWidget {
  static const String routeName = '/registration';

  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool hidePassword = true;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void createAccount() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        phoneController.text.isEmpty ||
        passwordController.text.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Please fill all fields")));
      return;
    }

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Account created successfully"),
        behavior: SnackBarBehavior.floating,
      ),
    );

    nameController.clear();
    emailController.clear();
    phoneController.clear();
    passwordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Account",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Appcolors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Appcolors.lightGrey,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: const Icon(
                  Icons.spa,
                  color: Appcolors.secondaryColor,
                  size: 30,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Join our plant\ncommunity",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                "Start your green journey with us today.",
                style: TextStyle(color: Appcolors.grey, fontSize: 14),
              ),
              const SizedBox(height: 30),
              PrimaryInput(
                controller: nameController,
                hintText: 'Enter your full name',
                label: 'Full Name',
                prefixIcon: const Icon(
                  Icons.person_outline_rounded,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 18),

              PrimaryInput(
                controller: emailController,
                hintText: 'hello@example.com',
                label: 'Email Address',
                prefixIcon: const Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 18),

              PrimaryInput(
                controller: phoneController,
                hintText: '+1(555) 000-0000',
                label: 'Phone Number',
                keyboardType: TextInputType.number,
                prefixIcon: const Icon(
                  Icons.phone_outlined,
                  color: Colors.grey,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                  LengthLimitingTextInputFormatter(10),
                ],
              ),
              const SizedBox(height: 18),
              PrimaryInput(
                controller: passwordController,
                hintText: '••••••••',
                label: 'Password',
                obscureText: hidePassword,
                prefixIcon: const Icon(Icons.lock_outline, color: Colors.grey),
                suffixIcon: IconButton(
                  icon: Icon(
                    hidePassword
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                    color: Appcolors.grey,
                  ),
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: TextSpan(
                  style: TextStyle(fontSize: 12, color: Appcolors.grey),
                  children: const [
                    TextSpan(
                      text: "By tapping 'Create Account', you agree to our ",
                    ),
                    TextSpan(
                      text: "Terms of Service",
                      style: TextStyle(
                        color: Appcolors.secondaryColor,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    TextSpan(text: " and "),
                    TextSpan(
                      text: "Privacy Policy",
                      style: TextStyle(color: Appcolors.secondaryColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: createAccount,
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Appcolors.primaryColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(color: Appcolors.white, fontSize: 16),
                      ),
                      SizedBox(width: 8),
                      Icon(
                        Icons.arrow_forward,
                        color: Appcolors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(color: Appcolors.black, fontSize: 14),
                      ),
                      WidgetSpan(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            "Log in",
                            style: TextStyle(
                              color: Appcolors.secondaryColor,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
