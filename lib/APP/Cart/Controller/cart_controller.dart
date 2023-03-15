import 'package:flutter/material.dart';

class CartController extends ChangeNotifier {
  List tShirt = [
    "asset/image/WhatsApp Image 2023-03-13 at 15.56 1.png",
    "asset/image/WhatsApp Image 2023-03-13 at 15.56 2.png",
    "asset/image/WhatsApp Image 2023-03-13 at 15.56 3.png",
  ];
  bool isRed = false;
  bool isBlack = false;
  bool isGreen = false;

  void isBlackColor() {
    isBlack = !isBlack;
    isGreen = false;
    isRed = false;
    notifyListeners();
  }

  void isRedColor() {
    isBlack = false;
    isGreen = false;
    isRed = !isRed;
    notifyListeners();
  }

  void isGreenColor() {
    isBlack = false;
    isGreen = !isGreen;
    isRed = false;
    notifyListeners();
  }

  List<String> sizes = [
    "S",
    "M",
    "L",
    "XL",
    "XXL",
  ];
}
