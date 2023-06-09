import 'package:bshoot/APP/Bottom%20NavigationBar/Controller/bottomnavigation_controller.dart';
import 'package:bshoot/APP/Bottom%20NavigationBar/view/bottomnavigationbar.dart';
import 'package:bshoot/APP/Cart/Controller/cart_controller.dart';
import 'package:bshoot/APP/HomePage/Controller/homepage_controller.dart';
import 'package:bshoot/APP/Menu/Controller/menu_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationController(),
        ),
        ChangeNotifierProvider(
          create: (context) => HomePageController(),
        ),
        ChangeNotifierProvider(
          create: (context) => MenuControllerPage(),
        ),ChangeNotifierProvider(
          create: (context) => CartController(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bshoot',
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: const BottomNavigationBarScreen(),
      ),
    );
  }
}
