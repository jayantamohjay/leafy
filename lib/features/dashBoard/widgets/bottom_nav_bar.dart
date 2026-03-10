import 'package:flutter/material.dart';

class Figma extends StatefulWidget {
  const Figma({super.key});

  @override
  State<Figma> createState() => _FigmaState();
}

class _FigmaState extends State<Figma> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    Center(child: Text("Shop Page")),
    Center(child: Text("Explore Page")),
    Center(child: Text("Cart Page")),
    Center(child: Text("Account Page")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        selectedItemColor: const Color.fromARGB(255, 253, 253, 253),
        unselectedItemColor: Colors.grey,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "SHOP"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "EXPLORE"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "CART",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "ACCOUNT"),
        ],
      ),
    );
  }
}
