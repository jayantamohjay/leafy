import 'package:flutter/material.dart';
import '../widgets/bottom_nav_bar.dart';

class BottomNavScreen extends StatefulWidget {
   BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
   int _currentIndex = 0;

  final List<Widget> _pages = [
    Container(
      
      color: Colors.blue,
      child: Center(child: Text("Shop Page"))), //0th
    Container(
      color: Colors.orange,
      child: Center(child: Text("Explore Page"))), //1st
    Center(child: Text("Cart Page")), //2nd
    Center(child: Text("Account Page")), //3rd
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("RANADEEP"),
      
      backgroundColor: Colors.amber,
      ),
      body: Container(
        
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: _pages[_currentIndex],
        )),
      bottomNavigationBar: AppButtonNavBar(
        curretIndex: _currentIndex,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      
    );
  }
}
