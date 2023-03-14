import 'package:bshoot/APP/Account/View/account_page.dart';
import 'package:bshoot/APP/Cart/View/cart_page.dart';
import 'package:bshoot/APP/HomePage/View/home_page.dart';
import 'package:bshoot/APP/Menu/View/menu_page.dart';
import 'package:flutter/material.dart';

class BottomNavigationController extends ChangeNotifier {
  List<dynamic> screens = [
    const HomePage(),
    const CartPage(),
    const AccountPage(),
    const MenuPage(),
  ];

  int currentIndex = 0;

  int currentIndexSearch() {
    return currentIndex;
  }

  void currentIndexResult(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
