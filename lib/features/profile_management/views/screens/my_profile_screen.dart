import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';




class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

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

          Center(
            child: Stack(
              children: [

                const CircleAvatar(
                  radius: 55,
                  backgroundImage: AssetImage(
                    "assets/images/image5.jpg",
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Appcolors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.edit,
                      color: Appcolors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              "Elena Thorne",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Appcolors.black,
              ),
            ),
          ),

          const Center(
            child: Text(
              "elena.thorne@example.com",
              style: TextStyle(color: Appcolors.grey),
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
        ],
      ),
    );
  }

  static Widget profileTile(IconData icon, String title) {
    return Container(
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
          backgroundColor: Appcolors.lightGrey,
          child: Icon(icon, color: Appcolors.primaryColor),
        ),
        title: Text(
          title,
          style: const TextStyle(color: Appcolors.black),
        ),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Appcolors.grey,
        ),
        onTap: () {},
      ),
    );
  }
}