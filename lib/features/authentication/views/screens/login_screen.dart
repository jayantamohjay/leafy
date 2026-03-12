import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/navigation/app_router.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/widgets/primary_input.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  
  final _formKey = GlobalKey<FormState>();

  
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'), centerTitle: true),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
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
                style: TextStyle(color: Appcolors.grey),
              ),
              SizedBox(height: 20),

              
              Form(
                key: _formKey,
                child: SizedBox(
                  width: 400,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        
                        PrimaryInput(
                          label: 'Email Address',
                          hintText: 'hello@example.com',
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email is required';
                            }
        
                            return null;
                          },
                        ),
                        SizedBox(height: 15),

                        
                        PrimaryInput(
                          label: 'Password',
                          hintText: '.........',
                          controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscureText: _obscurePassword,
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                _obscurePassword = !_obscurePassword;
                              });
                            },
                            child: Icon(
                              _obscurePassword
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined,
                              color: Appcolors.grey,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is required';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 13),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(height: 25),

                       
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Appcolors.primaryColor,
                            minimumSize: Size(350, 60),
                          ),
                          onPressed: () {
                          
                              if (_formKey.currentState!.validate()) {
                              
                              context.goNamed(AppRouter.dashboardName);
                            }
                          
                           
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 17, color: Appcolors.white),
                          ),
                        ),
                        SizedBox(height: 25),

                       
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(color: Appcolors.grey),
                            ),
                            TextButton(
                              onPressed: () {
                                context.pushNamed(AppRouter.registrationName);
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Appcolors.primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}