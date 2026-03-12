
import 'package:flutter/material.dart';

class AppButtonNavBar extends StatelessWidget {
  final Function(int index) onTap;
  final int curretIndex;
  const AppButtonNavBar({super.key, required this.onTap, required this.curretIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: BottomNavigationBar(
          currentIndex: curretIndex,
          onTap: onTap,
          selectedItemColor: Colors.green,
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
