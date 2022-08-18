import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../models/cart_model.dart';

class BlogsScreen extends StatefulWidget {
  const BlogsScreen({Key? key}) : super(key: key);

  @override
  State<BlogsScreen> createState() => _BlogsScreenState();
}

class _BlogsScreenState extends State<BlogsScreen> {


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.2,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back,
              color:Colors.black),
          centerTitle: true,
          title: const Text('Blogs',
            style: TextStyle(
                color: Colors.black
            ),
          )),
      body: Column(
        children:[
          Expanded(
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      right: 26.0,
                      left:29.0
                  ),
                  child: Expanded(
                    child: Container(
                      width: 373,
                      height: 161,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(12, 12),
                            spreadRadius: 1,
                            color: Color(0x1A5A5959),
                            blurRadius: 12.0,
                          ),
                        ],
                      ),
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left:11.0,
                              top:14.0,
                              bottom:14.0,
                          ),
                          child: Row(
                              children:[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    width:146,
                                      height:133,
                                      'assets/plant_cart.png'
                                  ),
                                ),
                                const SizedBox(width: 15),
                                Expanded(
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children :  [
                                        Container(
                                          width:117,
                                          height:25,
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: const Text('2 days ago',
                                                style : TextStyle(
                                                    color: Colors.greenAccent,
                                                    fontSize : 13,
                                                  fontWeight: FontWeight.w400
                                                )),
                                          ),
                                        ),
                                        const SizedBox(height:14),
                                        const Text('5 Tips to treat plants',
                                            overflow: TextOverflow.ellipsis,
                                            style : TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize : 17
                                            )),
                                        const SizedBox(height:19),
                                        Expanded(
                                          child: Text('leaf, in botany, any usually leaf, in botany, any usually ',
                                          style: TextStyle(
                                            color: Color(0xB37D7B7B),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400
                                          ),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis),
                                        )
                                      ]
                                  ),
                                )
                              ]
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                    height:23
                );
              },
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}