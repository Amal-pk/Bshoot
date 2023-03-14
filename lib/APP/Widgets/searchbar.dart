import 'package:flutter/material.dart';

class SeachBar extends StatelessWidget {
  const SeachBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.all(13),
              // padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: "What are you looking for ?"),
              ),
            ),
          ),
          // TextFormField(),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.qr_code_scanner),
          )
        ],
      ),
    );
  }
}
