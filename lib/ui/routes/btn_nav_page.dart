import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market/ui/home_page.dart';

import '../cart_page.dart';
import '../feeds_page.dart';
import '../search_page.dart';
import '../user_page.dart';

class BtnNavPage extends StatefulWidget {
  static const routeName = '/btn-nav-page';

  const BtnNavPage({super.key});

  @override
  State<BtnNavPage> createState() => _BtnNavPageState();
}

class _BtnNavPageState extends State<BtnNavPage> {
  int _currentIndex = 4;
  final List _listPage = const [
    HomePage(),
    FeedsPage(),
    SearchPage(),
    CartPage(),
    UserPage(),
  ];
  _onTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: _onTab,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Market',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chart_bar_alt_fill),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person),
            label: 'User',
          ),
        ],
      ),
      //  floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.blueAccent,
      //   onPressed: () {},
      //   child: const Icon(CupertinoIcons.search),
      // ),
    );
  }
}
