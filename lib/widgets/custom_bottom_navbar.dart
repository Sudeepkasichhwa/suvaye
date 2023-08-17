import 'package:flutter/material.dart';
import 'package:suvaye/screens/chat_screen.dart';
import 'package:suvaye/screens/service_screen.dart';

import '../screens/today_screen.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int navIndex = 1;
  List screen = [TodayScreen(), ServiceScreen(), ChatScreen()];
  void onTap(index) {
    setState(() {
      navIndex = index;
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => screen[index],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: navIndex,
      selectedItemColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.today_outlined), label: "Today"),
        BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_outlined), label: "Services"),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline), label: "Chat"),
      ],
    );
  }
}
