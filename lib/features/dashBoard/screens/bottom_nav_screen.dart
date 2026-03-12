import 'package:flutter/material.dart';
import '../../cartManagement/views/screens/cart_screen.dart';
import '../../profile_management/views/screens/my_profile_screen.dart';
import '../../searching/views/screens/searching_screen.dart';
import '../widgets/bottom_nav_bar.dart';
import 'home_screen.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    SearchingScreen(),
    CartScreen(), //2nd
    MyProfileScreen(), //3rd
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
