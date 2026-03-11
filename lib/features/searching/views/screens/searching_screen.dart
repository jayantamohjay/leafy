import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF4F6F5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Discover",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.orange.shade200,
                    child: const Icon(Icons.person),
                  )
                ],
              ),

              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
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
                        color: Color(0xff0F3D2E),
                        shape: BoxShape.circle,
                      ),
                      padding: const EdgeInsets.all(8),
                      child: const Icon(Icons.tune, color: Colors.white),
                    )
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "SUGGESTED CATEGORIES",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 15),
              Wrap(
                spacing: 12,
                runSpacing: 12,
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
                      fontWeight: FontWeight.w600,
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "Clear All",
                    style: TextStyle(
                      color: Colors.green,
                    ),
                  )
                ],
              ),

              const SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    recentItem("Monstera Deliciosa"),
                    recentItem("Snake Plant Laurentii"),
                    recentItem("Watering cans large"),
                    recentItem("Low light ferns"),
                  ],
                ),
              ),

              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Can't find what you need?",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Talk to a botanist",
                      style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryChip(String text, bool active) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: active ? const Color(0xff0F3D2E) : Colors.white,
        borderRadius: BorderRadius.circular(30),
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

  Widget recentItem(String text) {
    return ListTile(
      leading: const Icon(Icons.history, color: Colors.grey),
      title: Text(text),
      trailing: const Icon(Icons.close, color: Colors.grey),
    );
  }
}
