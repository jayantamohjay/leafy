import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/dash_board_app_bar.dart';

class BottomNavScreen extends StatelessWidget {
  const BottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: dashBoardAppBar(),
      body: const Placeholder(),
      bottomNavigationBar: Figma(),
    );
  }
}
