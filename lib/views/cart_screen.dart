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
              SizedBox(height:100),
              Image.asset('assets/draft_file_empty.png'),
              SizedBox(height:40),
              Text('Your cart is empty',
                style : TextStyle(
                    fontSize: 24,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(height:12),
              Text('Sorry, the keyword you entered cannot be\nfound,'
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
    ):Scaffold( 
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
                  left:24.0),
                  child: Container(
                    width: 373,
                    height: 161,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(1, 1),
                          spreadRadius: 1,
                          color: Color(0x70D0CECE),
                          blurRadius: 1.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal:11.0,
                          vertical:14.0
                      ),
                      child: Row(
                          children:[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16.0),
                              child: Image.asset(
                                  'assets/plant_cart.png'
                              ),
                            ),
                            Container(
                              margin:const EdgeInsets.
                              only(left:23),
                              child: Padding(
                                padding: const EdgeInsets.
                                only(top:14.0,bottom: 14.23,),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                  children :  [
                                    Text('Cactus plant',
                                    style : TextStyle(
                                        fontWeight: FontWeight.bold,
                                      fontSize : 18
                                    )),
                                    SizedBox(height:26),
                                    Text('200 EGP',
                                        style : TextStyle(
                                          color: Colors.greenAccent,
                                            fontWeight: FontWeight.bold,
                                            fontSize : 15.23
                                        )),
                                    SizedBox(height:19),
                                    Container(
                                      width: 67,
                                      height: 35.77,
                                      child: Row(
                                        children: [
                                          Container(
                                            color: Color(0xBFA71111),
                                            width: 67,
                                            height: 25.77,
                                              child:
                                              Row(
                                                children:[
                                                  Icon(Icons.remove),
                                                  SizedBox(width:14),
                                                  Text('2'),
                                                  SizedBox(width:13),
                                                  Icon(Icons.add)

                                                ]
                                    )
                                          ),
                                          SizedBox(width:91),
                                          Icon(Icons.remove)
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
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:
                    41,vertical:16),
                    child: Row(
                        children:const [
                          Text('Total',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20
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
                    padding: const EdgeInsets.symmetric
                      (horizontal:41.0,vertical:37),
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
    );
  }
}
