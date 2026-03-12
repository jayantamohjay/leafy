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

class SearchingScreen extends StatefulWidget {
  const SearchingScreen({super.key});

  @override
  State<SearchingScreen> createState() => _SearchingScreenState();
}

class _SearchingScreenState extends State<SearchingScreen> {
  final TextEditingController searchController = TextEditingController();

  int selectedCategory = 0;

  List<String> recentSearches = [
    "Monstera Deliciosa",
    "Snake Plant Laurentii",
    "Watering cans large",
    "Low light ferns",
  ];

  final List<Map<String, dynamic>> categories = [
    {"name": "Indoor", "icon": Icons.home},
    {"name": "Outdoor", "icon": Icons.park},
    {"name": "Succulents", "icon": Icons.eco},
    {"name": "Flowering", "icon": Icons.local_florist},
  ];

  void addSearch(String value) {
    if (value.trim().isEmpty) return;

    setState(() {
      recentSearches.remove(value);
      recentSearches.insert(0, value);
      searchController.clear();
    });
  }

  void removeSearch(int index) {
    setState(() {
      recentSearches.removeAt(index);
    });
  }

  void clearAll() {
    setState(() {
      recentSearches.clear();
    });
  }

  void openBotanistScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const BotanistScreen()),
    );
  }

  void selectRecentSearch(String text) {
    setState(() {
      searchController.text = text;
      recentSearches.remove(text);
      recentSearches.insert(0, text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Color(0xffF2A65A),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.person, color: Colors.black),
                  ),
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

                    Expanded(
                      child: TextField(
                        controller: searchController,
                        onSubmitted: addSearch,
                        decoration: const InputDecoration(
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
                      child: const Icon(
                        Icons.tune,
                        color: Appcolors.white,
                        size: 18,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              const Text(
                "SUGGESTED CATEGORIES",
                style: TextStyle(
                  fontSize: 20,
                  color: Appcolors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              Wrap(
                spacing: 18,
                runSpacing: 18,
                children: List.generate(categories.length, (index) {
                  return categoryChip(
                    categories[index]["name"],
                    categories[index]["icon"],
                    selectedCategory == index,
                    () {
                      setState(() {
                        selectedCategory = index;
                      });
                    },
                  );
                }),
              ),

              const SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "RECENT SEARCHES",
                    style: TextStyle(
                      fontSize: 12,
                      color: Appcolors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: clearAll,
                    child: const Text(
                      "Clear All",
                      style: TextStyle(fontSize: 12, color: Appcolors.grey),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Expanded(
                child: ListView.builder(
                  itemCount: recentSearches.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.history, color: Colors.grey),
                      title: Text(recentSearches[index]),
                      onTap: () {
                        selectRecentSearch(recentSearches[index]);
                      },
                      trailing: GestureDetector(
                        onTap: () => removeSearch(index),
                        child: const Icon(Icons.close, size: 18),
                      ),
                    );
                  },
                ),
              ),

              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Appcolors.lightGrey,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Can't find what you need?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          const SizedBox(height: 5),

                          GestureDetector(
                            onTap: openBotanistScreen,
                            child: const Text(
                              "Talk to a botanist",
                              style: TextStyle(
                                color: Appcolors.green,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
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
                      child: IconButton(
                        icon: const Icon(Icons.help_center_outlined),
                        onPressed: openBotanistScreen,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoryChip(
    String text,
    IconData icon,
    bool active,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color: active ? const Color(0xff1E5F3D) : Appcolors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 18, color: active ? Colors.white : Colors.black87),
            const SizedBox(width: 8),
            Text(
              text,
              style: TextStyle(
                color: active ? Colors.white : Colors.black87,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BotanistScreen extends StatelessWidget {
  const BotanistScreen({super.key});

  void showHelpline(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Connecting to plant expert helpline...")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Talk to a Botanist"),
        backgroundColor: const Color(0xff1E5F3D),
        actions: [
          IconButton(
            icon: const Icon(Icons.support_agent),
            onPressed: () => showHelpline(context),
          ),
        ],
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.eco, size: 80, color: Color(0xff1E5F3D)),

          const SizedBox(height: 20),

          const Center(
            child: Text(
              "Chat with a plant expert 🌱",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),

          const SizedBox(height: 25),

          ElevatedButton.icon(
            onPressed: () => showHelpline(context),
            icon: const Icon(Icons.call),
            label: const Text("Call Helpline"),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 0, 0, 0),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        onPressed: () => showHelpline(context),
        child: const Icon(Icons.headset_mic),
      ),
    );
  }
}
