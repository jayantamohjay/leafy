import 'package:flutter/material.dart';

import '../../../../core/widgets/primary_button.dart';
import '../../../../core/widgets/primary_input.dart';

class LoginScreen extends StatelessWidget {
  static const String routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login'),centerTitle: true,),
      body:  SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 25,),
              CircleAvatar(
                backgroundColor: Colors.white12,
                minRadius: 35,
                child: Icon(Icons.play_lesson_outlined,size: 35,color: Colors.black,),
              ),
              SizedBox(height: 10,),
              Text('Welcome back',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Please enter your details to signin',style: TextStyle(color: Colors.grey),),
              SizedBox(height: 40,),
              Card(
                color: Colors.grey[67],
                  child: SizedBox(
                    height: 250,
                    width: 400,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                           SizedBox(height: 40,),
                         // Text('Login Screen'),
                          PrimaryInput(
                            label: 'Email',
                            hintText: 'Enter your email',
                            controller: TextEditingController(),
                          ),
                          SizedBox(height: 10,),
                           PrimaryInput(
                            
                            label: 'Password',
                            hintText: 'Enter your password',
                           
                            controller: TextEditingController(),
                          ),
                         
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 35,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: Size(270, 50),
                  ),
                  onPressed:(){

                  },
                   child: Text('Login',style: TextStyle(fontSize: 17,color: Colors.white),),
                   ),
            ],
          ),
      ),
      
      
      
    );
  }
}
