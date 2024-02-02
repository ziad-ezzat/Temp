import 'package:flutter/material.dart';
import 'package:gr_project/Views/Pages/main_screens/MySpace.dart';
import 'package:gr_project/Views/Pages/main_screens/Therapist.dart';
import 'package:gr_project/Views/Pages/main_screens/home_screen.dart';
import 'package:gr_project/Views/Pages/main_screens/setting.dart';

class myBottomNavBar extends StatefulWidget {
  const myBottomNavBar({super.key});

  @override
  State<myBottomNavBar> createState() => _myBottomNavBarState();
}

class _myBottomNavBarState extends State<myBottomNavBar> {
  int myCurrentIndex = 0;
  List pages = const [
    HomePages(),
    TherapistPage(),
    MySpacePage(),
    SettingPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: myCurrentIndex,
          onTap: (index) {
            setState(() {
              myCurrentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_4_outlined), label: "Therapists"),
            BottomNavigationBarItem(
                icon: Icon(Icons.space_dashboard_outlined), label: "My space"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Setting"),
          ]),
      body: pages[myCurrentIndex],
    );
  }
}
