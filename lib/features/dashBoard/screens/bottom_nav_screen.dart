import 'package:flutter/material.dart';
import '../../searching/views/screens/searching_screen.dart';
import '../widgets/bottom_nav_bar.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(), //0th
    Container(
      color: Colors.orange,
      child: Center(child: Text("Explore Page")),
    ), //1st
    Center(child: Text("Cart Page")), //2nd
    Center(child: Text("Account Page")), //3rd
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: AppButtonNavBar(
        curretIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
