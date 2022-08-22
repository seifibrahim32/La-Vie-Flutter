import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../models/cart_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  List<CartModel> items = [CartModel()];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return LayoutBuilder(
      builder: (context , constraints) {
      if(constraints.widthConstraints().biggest
          .width >= 1366) {
        return items.isNotEmpty?
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:114.0,
                      right:118,
                      top:32,
                      bottom : 19
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/splashscreen.png',
                        width: 121, height: 27,
                      ),
                      const SizedBox(width:253),
                      const Text('Home',
                          style:TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      const Spacer(),
                      const Text('Shop',
                          style:TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      const Spacer(),
                      const Text('Blog',
                          style:TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      const Spacer(),
                      const Text('About',
                          style:TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      const  Spacer(),
                      const Text('Community',
                          style:TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600
                          )
                      ),
                      const Spacer(),
                      Image.asset('assets/cart_icon.png',
                        color: Colors.black,),
                      const SizedBox(width: 28),
                      const Icon(Icons.notifications_outlined,
                      ),
                      const SizedBox(width: 23),
                      const CircleAvatar(
                        radius:13,
                        backgroundColor: Colors.black,
                        backgroundImage: NetworkImage(
                            'https://www.nme.com/wp-content/'
                                'uploads/2022/02/rihanna-2000x1270-1.jpg'
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: const SizedBox(height: 40)
                ),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  color: Colors.grey[100],
                  child: const Text('My Cart',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w600
                      )
                  ),
                ),
                Container(
                    width: double.infinity,
                    color: Colors.grey[100],
                    child: const SizedBox(height: 20)
                ),
                Container(
                  color: Colors.grey[100],
                  padding: const EdgeInsets.symmetric(horizontal:118.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex : 3,
                        child: ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  right: 26.0,
                                  left: 29.0
                              ),
                              child: Container(
                                padding : const EdgeInsets.symmetric(
                                  horizontal: 18
                                ),
                                width: double.infinity,
                                height: 161,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(12, 16),
                                      spreadRadius: 1,
                                      color: Color(0x1A5A5959),
                                      blurRadius: 12.0,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(16.0),
                                        child: Image.asset(
                                            'assets/plant_cart.png'
                                        ),
                                      ),
                                      const SizedBox(width: 23),
                                      const Text('Indoor House Plant',
                                          overflow: TextOverflow
                                              .ellipsis,
                                          maxLines: 1,
                                          style: TextStyle(
                                              fontWeight: FontWeight
                                                  .w600,
                                              fontSize: 18
                                          )),
                                      const Spacer(),
                                      Container(
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius
                                                .circular(10),
                                            color: const Color(
                                                0xFFF8F8F8)
                                        ),
                                        child: Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets
                                                .only(
                                                left: 16.99,
                                                right: 18.2,
                                                top: 12.47,
                                                bottom: 15.47
                                            ),
                                            child: Row(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                      Icons
                                                          .remove,
                                                      color: Colors
                                                          .greenAccent,
                                                      size: 16.14
                                                  ),
                                                  SizedBox(
                                                      width: 14),
                                                  Text('1',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight
                                                              .w500
                                                      )
                                                  ),
                                                  SizedBox(
                                                      width: 13),
                                                  Icon(Icons.add,
                                                      color: Colors
                                                          .greenAccent,
                                                      size: 16.14),
                                                ]
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width:106),
                                      const Text('200 EGP',
                                          style: TextStyle(
                                              color: Colors.greenAccent,
                                              fontSize: 15.23,
                                            fontWeight: FontWeight.w500
                                          )
                                      ),
                                      const SizedBox(width:106),
                                      SizedBox(
                                        width: 20,
                                        height: 24,
                                        child: Image.asset(
                                            'assets/trash_icon.png',
                                            color: Colors
                                                .greenAccent,
                                            width: 20,
                                            height: 24
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox(
                                height: 23
                            );
                          },
                          itemCount: 10,
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(31.0),
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment: MainAxisAlignment.
                                            spaceAround,
                                            children :[
                                              Text('Sub Total',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              Spacer(),
                                              Text('0.00 Egp',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),),
                                            ]
                                        ),
                                        const SizedBox(height: 28.17),
                                        Row(
                                            children :[
                                              Text('Shipping',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              Spacer(),
                                              Text('0.00 Egp',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),),
                                            ]
                                        ),
                                        const SizedBox(height: 28.17),
                                        const SizedBox(
                                          width: double.infinity,
                                          height: 8,
                                          child: Divider(
                                            thickness: 1,
                                            indent: 0, endIndent: 0,
                                            color: Colors.grey,
                                            height: 20,
                                          ),
                                        ),
                                        const SizedBox(height: 28.17),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                            children :[
                                              Text('Total',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),
                                              ),
                                              Spacer(),
                                              Text('200 Egp',
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w500
                                                ),),
                                            ]
                                        ),
                                        const SizedBox(height: 28.17),
                                        MaterialButton(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.
                                                circular(10.0)
                                            ),
                                            elevation: 0,
                                            minWidth: double.infinity,
                                            height: 51,
                                            color: Colors.greenAccent,
                                            onPressed: () {},
                                            child: const Text('Checkout',
                                                style: TextStyle(color: Colors.white,
                                                    fontSize: 16
                                                )
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height:54),
                              Stack(
                                children: [
                                  TextField(
                                    onSubmitted: (searchedString){
                                    },
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    style: const TextStyle(fontSize: 17),
                                    textAlignVertical: TextAlignVertical.center,
                                    decoration: InputDecoration(
                                      filled: true,
                                      border: const OutlineInputBorder(
                                          gapPadding: 17,
                                          borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.all(Radius.circular(10))),
                                      fillColor: Colors.white,
                                      hintText: 'Enter your coupon',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500
                                      ),
                                      contentPadding: const EdgeInsets.only(left:
                                      12.0,right:81),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: MaterialButton(
                                      minWidth:21,
                                      shape: const RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.all(Radius.circular(10.0))
                                      ),
                                      textColor:Colors.white,
                                      elevation: 0,
                                      color: const Color(0xFF1ABC00),
                                      onPressed: () { },
                                      child: const Padding(
                                        padding: EdgeInsets.only(top:10.0,
                                          bottom:14,
                                        ),
                                        child: Text('Apply',
                                            style:TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500
                                            )
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ]
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
            : Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:114.0,right:118,top:32
                        , bottom : 41),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/splashscreen.png',
                          width: 121, height: 27,
                        ),
                        const SizedBox(width:253),
                        const Text('Home',
                            style:TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        const Spacer(),
                        const Text('Shop',
                            style:TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        const Spacer(),
                        const Text('Blog',
                            style:TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        const Spacer(),
                        const Text('About',
                            style:TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        const  Spacer(),
                        const Text('Community',
                            style:TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        const Spacer(),
                        Image.asset('assets/cart_icon.png',
                          color: Colors.black,),
                        const SizedBox(width: 28),
                        Icon(Icons.notifications_outlined,
                        ),
                        SizedBox(width: 23),
                        const CircleAvatar(
                          radius:13,
                          backgroundColor: Colors.black,
                          backgroundImage: NetworkImage(
                              'https://www.nme.com/wp-content/'
                                  'uploads/2022/02/rihanna-2000x1270-1.jpg'
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:211),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children :[
                        const SizedBox(height: 35),
                        const Text('My Cart',
                            style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.w600
                            )
                        ),
                        const SizedBox(height: 93),
                        Image.asset('assets/web/empty_web_cart.png'),
                        const SizedBox(height: 40),
                        const Text('Your cart is Empty',
                            style: TextStyle(
                                fontSize: 33,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        const SizedBox(height: 47),
                        MaterialButton(
                          minWidth:221,
                          height: 60,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))
                          ),
                          textColor:Colors.white,
                          elevation: 0,
                          color: const Color(0xFF1ABC00),
                          onPressed: () {

                          },
                          child: const Padding(
                            padding: EdgeInsets.only(top:13.0,
                                bottom:12,left:43,right:42
                            ),
                            child: Text('Go Shopping',
                                style:TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500
                                )),
                          ),
                        ),
                      ]
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
      return items.isNotEmpty?
      Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
            elevation: 0.2,
            backgroundColor: Colors.white,
            leading: const Icon(Icons.arrow_back,
                color: Colors.black),
            centerTitle: true,
            title: const Text('My Cart',
              style: TextStyle(
                  color: Colors.black
              ),
            )),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 26.0,
                        left: 29.0
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
                                left: 11.0,
                                top: 14.0,
                                bottom: 14.0,
                                right: 15
                            ),
                            child: Row(
                                children: [
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
                                      only(top: 14.0,
                                        bottom: 14.23,
                                      ),
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment
                                              .start,
                                          crossAxisAlignment: CrossAxisAlignment
                                              .start,
                                          children: [
                                            const Text('Cactus plant Alvera',
                                                overflow: TextOverflow
                                                    .ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontWeight: FontWeight
                                                        .bold,
                                                    fontSize: 18
                                                )),
                                            const SizedBox(height: 16),
                                            const Text('200 EGP',
                                                style: TextStyle(
                                                    color: Colors.greenAccent,
                                                    fontSize: 15.23
                                                )),
                                            const SizedBox(height: 19),
                                            Expanded(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius
                                                            .circular(10),
                                                        color: const Color(
                                                            0xFFF8F8F8)
                                                    ),
                                                    child: Expanded(
                                                      child: Padding(
                                                        padding: const EdgeInsets
                                                            .only(
                                                            left: 8.0,
                                                            right: 8.0,
                                                            top: 8.47,
                                                            bottom: 10.47
                                                        ),
                                                        child: Row(
                                                            children: const [
                                                              Icon(
                                                                  Icons
                                                                      .remove,
                                                                  color: Colors
                                                                      .greenAccent,
                                                                  size: 16.14
                                                              ),
                                                              SizedBox(
                                                                  width: 14),
                                                              Text('1',
                                                                  style: TextStyle(
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight
                                                                          .w500
                                                                  )
                                                              ),
                                                              SizedBox(
                                                                  width: 13),
                                                              Icon(Icons.add,
                                                                  color: Colors
                                                                      .greenAccent,
                                                                  size: 16.14),
                                                            ]
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const Spacer(),
                                                  SizedBox(
                                                    width: 20,
                                                    height: 24,
                                                    child: Image.asset(
                                                        'assets/trash_icon.png',
                                                        color: Colors
                                                            .greenAccent,
                                                        width: 20,
                                                        height: 24
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
                      height: 23
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
                      41, vertical: 16),
                      child: Row(
                          children: const [
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
                          horizontal: 41.0,
                          vertical: 37
                      ),
                      child: MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          elevation: 0,
                          minWidth: 347,
                          height: 51,
                          color: Colors.greenAccent,
                          onPressed: () {},
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
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 100),
                Image.asset('assets/draft_file_empty.png'),
                const SizedBox(height: 40),
                const Text('Your cart is empty',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    )
                ),
                const SizedBox(height: 12),
                const Text('Sorry, the keyword you entered cannot be\nfound,'
                    ' please check again or search with\nanother keyword.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
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
      },
    );
  }
}
