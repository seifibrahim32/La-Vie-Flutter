import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

class QRScannerScreen extends StatefulWidget{

  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      body: Column(
        children:[
          BarcodeWidget(
            data: 'google.com',
            barcode: Barcode.code128(),
            width:67,
            height:67
          ),

        ]
      ),
    );
  }
}