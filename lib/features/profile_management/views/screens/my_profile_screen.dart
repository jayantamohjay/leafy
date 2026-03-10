import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 252, 255, 254),

      appBar: AppBar(
        title: const Text(
          "Account",
          style: TextStyle(color: Color.fromARGB(255, 20, 43, 21),fontSize:16,fontWeight:FontWeight.bold),
        ),
        backgroundColor: const Color(0xfff4f6f5),
        elevation: 0,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 27, 58, 27)),
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
                  backgroundImage: NetworkImage(
                    "https://randomuser.me/api/portraits/women/44.jpg",
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 21, 51, 21),
                      shape: BoxShape.circle,
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
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
                color: Color.fromARGB(255, 9, 29, 10),
              ),
            ),
          ),

          const Center(
            child: Text(
              "elena.thorne@example.com",
              style: TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            "GENERAL",
            style: TextStyle(
              color: Colors.grey,
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
              color: Colors.grey,
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
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.1),
            blurRadius: 8,
            spreadRadius: 2,
          )
        ],
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xffE8F5E9),
          child: Icon(icon, color: const Color.fromARGB(255, 7, 19, 8)),
        ),
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        onTap: () {},
      ),
    );
  }
}