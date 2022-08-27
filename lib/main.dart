import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hackathon/views/bottom_navigators/blogs_screens/blogs_screen.dart';
import 'package:flutter_hackathon/views/discussion_screens/discussion_forums_screen.dart';
import 'package:flutter_hackathon/views/home_screen.dart';
import 'package:flutter_hackathon/views/user_registration_views/registration_screen.dart';
import 'package:flutter_hackathon/views/web_views/welcome_web_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'controllers/scroll_behaviors.dart';


void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
  ));
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
    await Future.delayed(const Duration(milliseconds: 3)).
    whenComplete(() => runApp(const LaVieSplashScreen()));

}

class LaVieSplashScreen extends StatelessWidget {
  const LaVieSplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: DiscussionScreen(),
    );
  }
}


