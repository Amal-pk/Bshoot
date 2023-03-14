import 'dart:developer';

import 'package:bshoot/APP/Cart/Controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<CartController>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Image(
                image: AssetImage(controller.tShirt[2]),
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
