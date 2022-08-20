import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hackathon/views/qr_views/qr_details.dart';
import 'package:flutter_hackathon/views/qr_views/qr_scanner.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
  ));
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Future.delayed(const Duration(milliseconds: 3));
  runApp(const LaVieSplashScreen());
}

class LaVieSplashScreen extends StatelessWidget {
  const LaVieSplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      home: QRDetails(),
    );
  }
}


