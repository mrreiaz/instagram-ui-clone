import 'package:flutter/material.dart';
import 'package:instagramuiclone/pages/account.dart';
import 'package:instagramuiclone/pages/home.dart';
import 'package:instagramuiclone/pages/reels.dart';
import 'package:instagramuiclone/pages/search.dart';
import 'package:instagramuiclone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _sellectedIndex = 0;

  void _navegatTheBottmbar(int index) {
    setState(() {
      _sellectedIndex = index;
    });
  }

  final List<Widget> _children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: _children[_sellectedIndex],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _navegatTheBottmbar,
        type: BottomNavigationBarType.fixed,
        currentIndex: _sellectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_settings,
            ),
            label: 'Reels',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_bag,
            ),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
