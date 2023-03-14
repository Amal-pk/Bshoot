import 'package:bshoot/APP/Bottom%20NavigationBar/Controller/bottomnavigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNavigationBarScreen extends StatelessWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<BottomNavigationController>();
    int currentScreenIndex = controller.currentIndexSearch();
    return Scaffold(
      body: controller.screens[currentScreenIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        // showSelectedLabels: false,
        elevation: 0,
        currentIndex: currentScreenIndex,
        onTap: (value) => controller.currentIndexResult(value),
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
                  ? Icons.window_sharp
                  : Icons.window_outlined,
            ),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              (currentScreenIndex == 2)
                  ? Icons.shopping_cart
                  : Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon((currentScreenIndex == 3)
                ? Icons.person
                : Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
