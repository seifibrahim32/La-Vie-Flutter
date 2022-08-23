import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon/views/bottom_navigators/profile_screen.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'bottom_navigators/blogs_screens/blogs_screen.dart';
import 'bottom_navigators/main_screen.dart';
import 'bottom_navigators/notifications_screen.dart';
import 'bottom_navigators/qr_views/qr_scanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int selectedIndexNavBar = 2;

  final List<Widget> _itemsList = const [ BlogsScreen(), QRScannerScreen(),
    MainScreen(),
    NotificationScreen(),
    ProfileScreen()
  ];

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _itemsList[selectedIndexNavBar],
      bottomNavigationBar: CurvedNavigationBar(
        animationCurve: Curves.bounceInOut,
        animationDuration: const Duration(milliseconds: 300),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: Colors.greenAccent,
        index : 2,
        items: [
          Image.asset('assets/bottom_nav_bar_assets/leaf.png') ,
          Image.asset('assets/bottom_nav_bar_assets/qr.png') ,
          Image.asset('assets/bottom_nav_bar_assets/home.png',color: Colors.black) ,
          Image.asset('assets/bottom_nav_bar_assets/notifications.png') ,
          Image.asset('assets/bottom_nav_bar_assets/user.png') ,
        ],
        onTap: (index) {
          setState((){
            selectedIndexNavBar = index;
          });
        },
      ),
    );
  }
}