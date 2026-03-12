import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';
import 'package:leafy/features/authentication/views/screens/login_screen.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  void showProfileBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [

              const Text(
                "Profile Options",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              ListTile(
                leading: const Icon(Icons.camera, color: Appcolors.primaryColor),
                title: const Text("Camera"),
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              ListTile(
                leading: const Icon(Icons.photo, color: Appcolors.primaryColor),
                title: const Text("Gallery"),
                onTap: () {
                  Navigator.pop(context);
                  
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to logout?"),
          actions: [

            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Cancel"),
            ),

           ElevatedButton(
  onPressed: () {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
      (route) => false,
    );
  },
  child: const Text("Proceed"),
),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.lightBackgroundColor,

      appBar: AppBar(
        title: const Text(
          "Account",
          style: TextStyle(
            color: Appcolors.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Appcolors.lightBackgroundColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Appcolors.primaryColor),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [

          const SizedBox(height: 20),

          GestureDetector(
            onTap: () {
              showProfileBottomSheet(context);
            },
            child: Column(
              children: [

               Stack(
  alignment: Alignment.center,
  children: [

    Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Appcolors.white,
        
      ),
      child: const CircleAvatar(
        radius: 55,
        backgroundImage: AssetImage(
          "assets/images/image5.png",
        ),
      ),
    ),
    Positioned(
      bottom: 4,
      right: 4,
      child: Container(
        padding: const EdgeInsets.all(7),
        decoration: BoxDecoration(
          color: Appcolors.primaryColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: Appcolors.lightBackgroundColor,
            width: 2,
          ),
        ),
        child: const Icon(
          Icons.edit,
          size: 16,
          color:Appcolors.lightBackgroundColor,
        ),
      ),
    ),
  ],
),

              
             const  SizedBox(),

                const Text(
                  "Elena Thorne",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Appcolors.black,
                  ),
                ),

                const Text(
                  "elena.thorne@example.com",
                  style: TextStyle(
                    color: Appcolors.grey,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            "GENERAL",
            style: TextStyle(
              color: Appcolors.grey,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),

          const SizedBox(height: 10),

          profileTile(Icons.shopping_bag_outlined, "My Orders"),

          const SizedBox(height: 10),

          profileTile(Icons.location_on_outlined, "Shipping Address"),

          const SizedBox(height: 10),

          profileTile(Icons.credit_card_outlined, "Payment Methods"),

          const SizedBox(height: 35),

          const Text(
            "PREFERENCES",
            style: TextStyle(
              color: Appcolors.grey,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),

          const SizedBox(height: 10),

          profileTile(Icons.settings_outlined, "Settings"),

          const SizedBox(height: 10),

         
          profileTile(
            Icons.logout,
            "Logout",
            iconColor: Appcolors.red,
            
            
            onTap: (context) {
              showLogoutDialog(context);
            },
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  static Widget profileTile(
    IconData icon,
    String title, {
    Color iconColor = Appcolors.primaryColor,


    Function(BuildContext)? onTap,
  }) {
    return Builder(
      builder: (context) => Container(
        decoration: BoxDecoration(
          color: Appcolors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: Appcolors.grey.withOpacity(.1),
              blurRadius: 8,
              spreadRadius: 2,
            )
          ],
        ),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor:iconColor.withValues(alpha: 0.1),
            child: Icon(
              icon,
              size: 18,
              color: iconColor,
            ),
          ),

          title: Text(
            title,
            style: const TextStyle(
              color: Appcolors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Appcolors.grey,
          ),

          onTap: () {
            if (onTap != null) {
              onTap(context);
            }
          },
        ),
      ),
    );
  }
}