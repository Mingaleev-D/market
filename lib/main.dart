import 'package:flutter/material.dart';
import 'package:market/ui/cart_page.dart';
import 'package:market/ui/feeds_page.dart';
import 'package:market/ui/home_page.dart';
import 'package:market/ui/routes/btn_nav_page.dart';
import 'package:market/ui/search_page.dart';
import 'package:market/ui/user_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
      ),
      home: const BtnNavPage(),
      routes: {
        BtnNavPage.routeName: (context) => const BtnNavPage(),
        HomePage.routeName: (context) => const HomePage(),
        FeedsPage.routeName: (context) => const FeedsPage(),
        SearchPage.routeName: (context) => const SearchPage(),
        CartPage.routeName: (context) => const CartPage(),
        UserPage.routeName: (context) => const UserPage(),
      },
    );
  }
}
