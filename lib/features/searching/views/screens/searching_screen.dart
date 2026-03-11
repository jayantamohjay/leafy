import 'package:flutter/material.dart';
import 'package:leafy/core/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SearchingScreen(),
    );
  }
}

class SearchingScreen extends StatelessWidget {
  const SearchingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xffF2A65A),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, color: Colors.white),
                  )
                ],
              ),

              const SizedBox(height: 20),

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                height: 50,
                decoration: BoxDecoration(
                  color: Appcolors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Appcolors.grey),
                    const SizedBox(width: 10),
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search for your next plant...",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Appcolors.secondaryColor,
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.tune, color: Appcolors.white, size: 18),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "SUGGESTED CATEGORIES",
                style: TextStyle(
                  fontSize: 12,
                  color: Appcolors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  categoryChip("Indoor", true),
                  categoryChip("Outdoor", false),
                  categoryChip("Succulents", false),
                  categoryChip("Flowering", false),
                ],
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "RECENT SEARCHES",
                    style: TextStyle(
                      fontSize: 12,
                      color: Appcolors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Clear All",
                    style: TextStyle(
                      fontSize: 12,
                      color: Appcolors.grey,
                    ),
                  )
                ],
              ),

              const SizedBox(height: 10),

              recentItem("Monstera Deliciosa"),
              recentItem("Snake Plant Laurentii"),
              recentItem("Watering cans large"),
              recentItem("Low light ferns"),

              const Spacer(),
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Appcolors.white,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Can't find what you need?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            "Talk to a botanist",
                            style: TextStyle(
                              color: Appcolors.green,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.help_outline),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }

  static Widget categoryChip(String text, bool active) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      decoration: BoxDecoration(
        color: active ? const Color(0xff1E5F3D) : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: active ? Colors.white : Colors.black87,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  static Widget recentItem(String text) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.history, color: Colors.grey),
      title: Text(text),
      trailing: const Icon(Icons.close, size: 18),
    );
  }
}