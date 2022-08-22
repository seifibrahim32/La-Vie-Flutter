import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';


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
    return
      LayoutBuilder(
        builder: (context , constraints) {
          if(constraints.widthConstraints().biggest
              .width >= 1366){
            return Scaffold(
              resizeToAvoidBottomInset: false,
              backgroundColor: Colors.white,
              body: Column(
                children:[

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
                    child: const Text('Blogs',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600
                        )
                    ),
                  ),
                  Expanded(
                    child: GridView.builder(
                      itemCount :10,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 14,
                          mainAxisSpacing:74,
                          mainAxisExtent:227
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Expanded(
                              child: Container(
                                  padding: const EdgeInsets.only(
                                      left:13.0,
                                      right:11,
                                      top:27,
                                      bottom: 20
                                  ),
                                  width:176,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                    boxShadow: const [
                                      BoxShadow(
                                        offset: Offset(0, 2),
                                        spreadRadius: 1,
                                        color: Color(0x1A5A5959),
                                        blurRadius: 0.8,
                                      ),
                                    ],
                                  ),
                                  child: Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                child: Container(
                                                  width:16,
                                                  height:16,
                                                  color: Colors.grey.withOpacity(0.3),
                                                  child: const Icon(
                                                      Icons.remove,
                                                      color : Colors.grey ,
                                                      size: 16.14
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(width:13),
                                              const Text('1',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600
                                                  )
                                              ),
                                              const SizedBox(width:13),
                                              GestureDetector(
                                                child: Container(
                                                  width:16,
                                                  height:16,
                                                  color: Colors.grey.withOpacity(0.3),
                                                  child: const Icon(
                                                      Icons.add,
                                                      color : Colors.grey,
                                                      size: 16.14
                                                  ),
                                                ),
                                              ),
                                            ]
                                        ),
                                        const SizedBox(height:83),
                                        Expanded(
                                          child: Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children:[
                                                const Flexible(
                                                  child: Text('GARDENIA PLANET',
                                                      style:TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w500
                                                      )
                                                  ),
                                                ),
                                                const Text('70 EGP',
                                                    style:TextStyle(
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w500
                                                    )
                                                ),
                                                MaterialButton(
                                                  height: 35,
                                                  minWidth: 148,
                                                  shape: const RoundedRectangleBorder(
                                                      borderRadius:
                                                      BorderRadius.all(
                                                          Radius.circular(5.0)
                                                      )
                                                  ),
                                                  textColor:   Colors.white,
                                                  elevation: 0,
                                                  color: const Color(0xFF1ABC00),
                                                  onPressed: () {
                                                  },
                                                  child: const SizedBox(
                                                    child: Text('Add To Cart',
                                                        style:TextStyle(
                                                            fontSize: 16
                                                        )),
                                                  ),
                                                ),
                                              ]
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),
                            ),
                            Positioned(
                                top : -30,
                                left:15,
                                child: Image.asset(
                                    'assets/plant_home_demo.png'
                                    ,scale:0.7
                                )
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }

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
                                              children :  const [
                                                SizedBox(
                                                  width:117,
                                                  height:25,
                                                  child: Align(
                                                    alignment: Alignment.bottomLeft,
                                                    child: Text('2 days ago',
                                                        style : TextStyle(
                                                            color: Colors.greenAccent,
                                                            fontSize : 13,
                                                            fontWeight: FontWeight.w400
                                                        )),
                                                  ),
                                                ),
                                                SizedBox(height:14),
                                                Text('5 Tips to treat plants',
                                                    overflow: TextOverflow.ellipsis,
                                                    style : TextStyle(
                                                        fontWeight: FontWeight.w600,
                                                        fontSize : 17
                                                    )),
                                                SizedBox(height:19),
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
      );
  }
}