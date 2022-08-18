import 'package:flutter/material.dart';

class BlogListScreen extends StatelessWidget{

  const BlogListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        physics : const BouncingScrollPhysics(),
        child: Column(
          children:[
            Container(
              width: 428,
              height:299,
              color: Colors.blue,
            ),

          ]
        ),
      )
    );
  }
}