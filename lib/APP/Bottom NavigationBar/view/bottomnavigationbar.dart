import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        elevation: 0,
        currentIndex: currentScreenIndex,
        onTap: (value) => screenindexprovider.currentIndexResult(value),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 0)
                  ? Icons.home_rounded
                  : Icons.home_outlined,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 1)
                  ? Icons.stadium_sharp
                  : Icons.stadium_outlined,
            ),
            label: 'All Turff',
          ),
          BottomNavigationBarItem(
            icon: Icon((currentScreenIndex == 2)
                ? Icons.person
                : Icons.person_outline),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}