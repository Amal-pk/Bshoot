import 'package:flutter/material.dart';

class CartController extends ChangeNotifier {
  List tShirt = [
    "asset/image/WhatsApp Image 2023-03-13 at 15.56 1.png",
    "asset/image/WhatsApp Image 2023-03-13 at 15.56 2.png",
    "asset/image/WhatsApp Image 2023-03-13 at 15.56 3.png",
  ];
  int currentImage = 0;
  int currentImageSearch() {
    return currentImage;
  }

  void currentImageResult(int index) {
    currentImage = index;
    notifyListeners();
  }
}
