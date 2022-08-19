import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../models/cart_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<CartModel> items = [];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return items.isNotEmpty?
    Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.2,
          backgroundColor: Colors.white,
          leading: const Icon(Icons.arrow_back,
              color:Colors.black),
          centerTitle: true,
          title: const Text('My Cart',
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
                              right:15
                          ),
                          child: Row(
                              children:[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                      'assets/plant_cart.png'
                                  ),
                                ),
                                const SizedBox(width: 23),
                                Expanded(
                                  child: Container(
                                    margin: const EdgeInsets.
                                    only(top:14.0,
                                      bottom: 14.23,
                                    ),
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children :  [
                                          const Text('Cactus plant Alvera',
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                              style : TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize : 18
                                              )),
                                          const SizedBox(height:16),
                                          const Text('200 EGP',
                                              style : TextStyle(
                                                  color: Colors.greenAccent,
                                                  fontSize : 15.23
                                              )),
                                          const SizedBox(height:19),
                                          Expanded(
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Container(
                                                  decoration:BoxDecoration(
                                                      borderRadius : BorderRadius.circular(10),
                                                      color: const Color(0xFFF8F8F8)
                                                  ),
                                                  child: Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.only(
                                                          left:8.0,
                                                          right:8.0,
                                                          top:8.47,
                                                          bottom:10.47
                                                      ),
                                                      child: Row(
                                                          children: const [
                                                            Icon(
                                                                Icons.remove,
                                                                color : Colors.greenAccent,
                                                                size: 16.14
                                                            ),
                                                            SizedBox(width:14),
                                                            Text('1',
                                                                style: TextStyle(
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )),
                                                            SizedBox(width:13),
                                                            Icon(Icons.add,
                                                                color : Colors.greenAccent,
                                                                size: 16.14),
                                                          ]
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const Spacer(),
                                                SizedBox(
                                                  width:20,
                                                  height:24,
                                                  child: Image.asset(
                                                      'assets/trash_icon.png',
                                                      color : Colors.greenAccent,
                                                      width: 20,
                                                      height:24
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ]
                                    ),
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
              itemCount: 10,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 250,
              color: Colors.white,
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:
                    41,vertical:16),
                    child: Row(
                        children:const [
                          Text('Total',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w600
                            ),),
                          Spacer(),
                          Text('300,000 Egp',
                            style: TextStyle(
                                color: Color(0xFF1ABC00),
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),)
                        ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal:41.0,
                        vertical:37
                    ),
                    child: MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10.0) ),
                        elevation: 0,
                        minWidth: 347,
                        height:51,
                        color: Colors.greenAccent,
                        onPressed: () {
                        },
                        child: const Text('Checkout',
                            style: TextStyle(color: Colors.white,
                                fontSize: 16))
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    )
    : Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0.2,
          backgroundColor: Colors.white,
          title: const Text('My Cart',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25
            ),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:24.0),
        child: Center(
          child: Column(
            mainAxisAlignment:  MainAxisAlignment.start,
            children:[
              const SizedBox(height:100),
              Image.asset('assets/draft_file_empty.png'),
              const SizedBox(height:40),
              const Text('Your cart is empty',
                  style : TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold
                  )
              ),
              const SizedBox(height:12),
              const Text('Sorry, the keyword you entered cannot be\nfound,'
                  ' please check again or search with\nanother keyword.',
                  textAlign: TextAlign.center,
                  style : TextStyle(
                      color: Color(0x9C212121),
                      fontSize: 18,
                      fontWeight: FontWeight.w400
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }
}
