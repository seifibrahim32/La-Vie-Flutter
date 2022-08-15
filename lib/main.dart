import 'package:flutter/material.dart';

import 'main_page.dart';

void main() {
  runApp(const FlutterHackathon());
}

class FlutterHackathon extends StatelessWidget {
  const FlutterHackathon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage()
    );
  }
}


