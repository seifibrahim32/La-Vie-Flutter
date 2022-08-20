import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

class QRScannerScreen extends StatefulWidget{

  const QRScannerScreen({super.key});

  @override
  State<QRScannerScreen> createState() => _QRScannerScreenState();
}

class _QRScannerScreenState extends State<QRScannerScreen> {

  String scanResult = "";


  @override
  void initState() {
    super.initState();
    barCodeScanner();
  }

  Future barCodeScanner() async {
    String scanResult;
    try {
      scanResult = await FlutterBarcodeScanner.scanBarcode(
          "#ff6666",
          "Cancel",
          true,
          ScanMode.QR
      );
    } on PlatformException {
      scanResult = "Failed to get platform version.";
    }
    if (!mounted) return;
    setState(() {
      this.scanResult = scanResult;
    });
  }
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
            left: 44.0,right:43,bottom:10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children:[
              const Spacer(
                  flex: 2
              ),
              Stack(
                alignment : Alignment.center,
                children: [

                  Image.asset('assets/line_dash_qr.png',
                      color: Colors.black,
                      scale: 0.2
                  ),
                  Image.asset('assets/qr_big.png',
                      color: Colors.black),
                ],
              ),
              const Spacer(
                  flex: 2
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                    padding: const EdgeInsets.only(
                        left: 23,
                        right:18,
                        top: 10,
                        bottom: 6
                    ),
                    decoration: const BoxDecoration(
                        color: Color(0xFFE5E0E0),
                        borderRadius: BorderRadius.all(
                            Radius.circular(5)
                        )
                    ),
                    child : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:[
                          Column(
                              children:   [
                                Text('Snake Plant (SANSEVIERIA)',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                Row(
                                    children:  [
                                      SizedBox(width:1),
                                      Text('Native to southern Africa',
                                          style: TextStyle(
                                              height:2,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400
                                          )
                                      ),
                                    ]
                                )
                              ]
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {  },
                            icon: const CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.green,
                              child: Icon(
                                  Icons.arrow_forward,
                                  color : Colors.white),
                            ),
                          )
                        ]
                    )
                ),
              ),
              const Spacer(),
          ]
        ),
      ),
    );
  }

}