import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  static late List<Tab>? _tabs;
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _tabs = <Tab>[
      const Tab(text: 'Sign Up', ),
      const Tab(text: 'Login', ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset('assets/background_login.png'),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                    height:150
                ),
                Image.asset('assets/splashscreen_160.png',
                  width: 102,height: 90,),
                TabBar(
                    tabs: _tabs!
                ),
              ],
          ),

        ],
      ),
    );
  }

}
