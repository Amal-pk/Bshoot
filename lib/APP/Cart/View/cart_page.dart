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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, bottom: 20),
                  alignment: Alignment.center,
                  child: Image(
                    image: AssetImage(
                      controller.isBlack
                          ? controller.tShirt[0]
                          : controller.isRed
                              ? controller.tShirt[1]
                              : controller.tShirt[2],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  controller.isBlack
                      ? "Black T shirt"
                      : controller.isRed
                          ? "Red T shirt"
                          : "Green T shirt",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0, bottom: 16),
                  child: Text(
                    "Colors",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        controller.isBlackColor();
                      },
                      icon: Icon(
                        controller.isBlack
                            ? Icons.circle_outlined
                            : Icons.circle,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.isRedColor();
                      },
                      icon: Icon(
                        controller.isRed ? Icons.circle_outlined : Icons.circle,
                        color: Colors.red,
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        controller.isGreenColor();
                      },
                      icon: Icon(
                        controller.isGreen
                            ? Icons.circle_outlined
                            : Icons.circle,
                        color: Colors.green,
                        size: 30,
                      ),
                    )
                  ],
                ),
                const Divider(
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 50,
                  child: ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    itemCount: controller.sizes.length,
                    itemBuilder: (context, index) {
                      return Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                              vertical: 5,
                            ),
                            child: Text(
                              controller.sizes[index],
                              style: const TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
