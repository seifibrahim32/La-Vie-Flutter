import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class ProductsDetailsWeb extends StatefulWidget{

  const ProductsDetailsWeb({super.key});

  @override
  State<ProductsDetailsWeb> createState() => _ProductsDetailsWebState();
}

class _ProductsDetailsWebState extends State<ProductsDetailsWeb> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Column(
          children : [
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 84.0, right: 118, top: 32, bottom: 10),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/splashscreen.png',
                      width: 121,
                      height: 27,
                    ),
                    const SizedBox(width: 133),
                    const Text('Home',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const Spacer(),
                    const Text('Shop',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const Spacer(),
                    const Text('Blog',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const Spacer(),
                    const Text('About',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const Spacer(),
                    const Text('Community',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w600)),
                    const Spacer(),
                    Image.asset(
                      'assets/cart_icon.png',
                      color: Colors.black,
                    ),
                    const SizedBox(width: 28),
                    const Icon(
                      Icons.notifications_outlined,
                    ),
                    const SizedBox(width: 23),
                    const CircleAvatar(
                      radius: 13,
                      backgroundColor: Colors.black,
                      backgroundImage:
                      NetworkImage('https://www.nme.com/wp-content/'
                          'uploads/2022/02/rihanna-2000x1270-1.jpg'),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
                height: 18
            ),
            Center(
              child: const Text('Home / Plants / Snake Plant',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(height:26),
            Expanded(
              child: SingleChildScrollView(
                primary:true,
                physics: const BouncingScrollPhysics(),
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left:18.0,
                        right:110
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          flex:1,
                          child: ListView.separated(
                            itemCount: 2,
                            shrinkWrap: true,
                            separatorBuilder: (context,index) => const
                            SizedBox(height: 26),
                            itemBuilder  : (context,index){
                              return Container(
                                width:10,
                                height:121,
                                decoration : BoxDecoration(
                                  color: Colors.black,
                                  borderRadius:
                                    BorderRadius.all(
                                    Radius.circular(10.0)
                                    )
                                )

                              );
                            }
                          ),
                        ),
                        SizedBox(width:20),
                        ClipRRect(
                          child: Image.asset('assets/draft_file_empty.png',
                          width:180,height:176,scale:1),
                        ),
                        SizedBox(width:15),
                        Expanded(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text('SNAKE PLANT (SANSEVIERIA)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                    )),
                                Row(
                                    children: const [
                                      Flexible(
                                        child: Text('EGP 180.00',
                                            style: TextStyle(
                                                height:2,
                                                color: Colors.green,
                                                fontSize:18,
                                                fontWeight: FontWeight.w600
                                            )),
                                      )
                                    ]
                                ),
                                SizedBox(height:18),
                                Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children:[
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                                width:139,
                                                height:115,
                                                padding: EdgeInsets.fromLTRB(
                                                    35,22,14,22
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color(0x0d1abc00),
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Column(
                                                  children: [
                                                    Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment.topRight,
                                                            child: Row(
                                                              children:   [
                                                                const Text('78',
                                                                    style: TextStyle(
                                                                        fontSize: 22,
                                                                        color: Colors.black,
                                                                        fontWeight: FontWeight.w600
                                                                    )
                                                                ),
                                                                Container(
                                                                  margin: const EdgeInsets.only(
                                                                      bottom: 14
                                                                  ),
                                                                  child: const Text('%',
                                                                      style: TextStyle(
                                                                          fontSize: 16,
                                                                          color: Colors.black,
                                                                          fontWeight: FontWeight.w500
                                                                      )
                                                                  ),
                                                                ),

                                                                Image.asset('assets/sunlight_icon.png',
                                                                  color: Colors.yellow,),

                                                              ],
                                                            )
                                                        ),
                                                        const Text('Sun light',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 18,
                                                                fontWeight: FontWeight.w400
                                                            )),
                                                      ],
                                                    )
                                                  ],
                                                )
                                            ),
                                            const SizedBox(
                                                width:24
                                            ),
                                          ]
                                      ),
                                      const SizedBox(height:29),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children:[
                                            Container(
                                                width:139,
                                                height:115,
                                                padding: EdgeInsets.fromLTRB(
                                                    35,26,33,21
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color(0x0d1abc00),
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment: Alignment.topRight,
                                                        child: Row(
                                                          children: [
                                                            const Text('10',
                                                                style: TextStyle(
                                                                    fontSize: 22,
                                                                    color: Colors.black,
                                                                    fontWeight: FontWeight.w600
                                                                )
                                                            ),
                                                            Container(
                                                              margin: const EdgeInsets.only(
                                                                  bottom: 14
                                                              ),
                                                              child: const Text('%',
                                                                  style: TextStyle(
                                                                      fontSize: 16,
                                                                      color: Colors.black,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              ),
                                                            ),
                                                            Image.asset('assets/water_capacity_icon.png',
                                                              color:  Colors.blue,),
                                                          ],
                                                        )
                                                    ),
                                                    const Text('Water',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 18,
                                                            fontWeight: FontWeight.w400
                                                        )),
                                                  ],
                                                )
                                            ),
                                            const SizedBox(
                                                width:24
                                            ),
                                          ]
                                      ),
                                      const SizedBox(height:15),
                                      Row(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children:[
                                            Container(
                                                width:133,
                                                height:115,
                                                padding: EdgeInsets.fromLTRB(
                                                    8,26,3,21
                                                ),
                                                decoration: BoxDecoration(
                                                    color: Color(0x0d1abc00),
                                                    borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        const Text('29',
                                                            style: TextStyle(
                                                                fontSize: 30,
                                                                color: Colors.black,
                                                                fontWeight: FontWeight.w600
                                                            )
                                                        ),
                                                        const Text('c',
                                                            textAlign: TextAlign.start,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                color: Colors.black,
                                                                fontWeight: FontWeight.w500
                                                            )
                                                        ),
                                                        Align(
                                                          alignment: Alignment.topLeft,
                                                          child: const Text('°',
                                                              style: TextStyle(
                                                                  fontSize: 16,
                                                                  color: Colors.black,
                                                                  fontWeight: FontWeight.w500
                                                              )
                                                          ),
                                                        ),
                                                        Image.asset('assets/temperature_icon.png',
                                                          color: Colors.red, ),
                                                      ],
                                                    ),
                                                    const Text('Temperature',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.w400
                                                        )),
                                                  ],
                                                )
                                            ),
                                          ]
                                      ),
                                    ]
                                ),
                                const SizedBox(height:10),
                                const Text('Information',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    )
                                ),
                                const SizedBox(height:8),
                                Text(''
                                    'A widespread problem with snake pla'
                                    'nts is root rot. This results from '
                                    'over-watering the soil of the plant'
                                    ' and is most common in the colder m'
                                    'onths of the year. When room rot oc'
                                    'curs, the plant roots can die due t'
                                    'o a lack of oxygen and an overgrowt'
                                    'h of fungus within the soil. If the'
                                    ' snake plant\'s soil is soggy, cert'
                                    'ain microorganisms such as Rhizocto'
                                    'nia and Pythium can begin to popula'
                                    'te and multiply, spreading disease '
                                    'throughout the ',
                                    style: TextStyle(
                                        height:2,
                                        color: Color(0xFF979797),
                                        fontSize:14,
                                        fontWeight: FontWeight.w400
                                    )
                                ),
                                const SizedBox(height:24),
                                Row(
                                  children : [
                                    Text('Qty : ',
                                    style
                                    : TextStyle(
                                      fontSize:19,
                                    )
                                    ),
                                    SizedBox(width:30),
                                    Row(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                        MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                              Icons
                                                  .remove,
                                              color: Colors
                                                  .grey,
                                              size: 20
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
                                                  .grey,
                                              size: 16.14),
                                        ]
                                    )
                                  ]
                                ),
                                const SizedBox(height:24),
                                MaterialButton(
                                  height: 76,
                                  minWidth: 407,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(10.0)
                                      )
                                  ),
                                  textColor:   Colors.white,
                                  elevation: 0,
                                  color: Color(0xFF1ABC00),
                                  onPressed: () {
                                  },
                                  child: const SizedBox(
                                    child: Text('ADD TO CART',
                                        style:TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.w500
                                        )),
                                  ),
                                ),
                                const SizedBox(height:24),
                              ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ]
      ),
    );
  }
}