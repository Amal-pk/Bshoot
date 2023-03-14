import 'package:bshoot/APP/Menu/Controller/menu_controller.dart';
import 'package:bshoot/APP/Widgets/searchbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<MenuControllerPage>();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SeachBar(),
          CarouselSlider.builder(
            itemBuilder: (BuildContext context, int index, int realIndex) {
              final imagurl = controller.carouselSliderImg[index];
              return buildImage(imagurl, index);
            },
            itemCount: controller.carouselSliderImg.length,
            options: CarouselOptions(
              // autoPlayInterval: const Duration(seconds: 5),
              autoPlay: false,
              initialPage: 2,
              height: 200,
              aspectRatio: 2.0,
              enlargeCenterPage: true,
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.catagoris.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(3),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage(controller.catagoris[index]),
                      ),
                    ),
                    Text(
                      controller.catagorisName[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                );
              },
            ),
          ),
          const Text(
            "OFFERS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildImage(String imageUrl, int index) => Container(
      // padding: const EdgeInsets.symmetric(horizontal: 8),
      margin: const EdgeInsets.all(8),
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageUrl),
        ),
      ),
    );
