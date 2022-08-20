import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin{

  TabController? _tabController;
  int choiceIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
        length: 4, vsync: this
    );
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBody: true,
        body: Column(
          children:[
            const SizedBox(height:50),
            Center(child: Image.asset('assets/lavie.png',width:102,height:33)),
            const SizedBox(height:40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16.0),
              child: Row(
                  children:[
                Expanded(
                  flex:9,
                  child: SizedBox(
                    height: 46,
                    child: TextField(
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      style: const TextStyle(fontSize: 17),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        filled: true,
                        prefixIcon:
                        const Padding(
                          padding: EdgeInsets.only(left:29.13,right:17.54),
                          child: Icon(Icons.search,color:Color.fromARGB(255, 151, 151, 151,)),
                        ),
                        border: const OutlineInputBorder(
                          gapPadding: 17,
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                        hintText: 'Search',
                        contentPadding: const EdgeInsets.all(0.0),
                      ),
                    ),
                  )
                ),
                const Spacer(),
                Container(
                  height: 46,
                  decoration : const BoxDecoration(
                    color: Colors.greenAccent,
                      borderRadius: BorderRadius.all(
                          Radius.circular(10.0)
                      ),
                  ),
                  child: IconButton(
                    color: Colors.white,
                    onPressed:(){},
                    icon: Center(
                      child:
                        Image.asset('assets/cart_icon.png')
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(height:26.0),
            TabBar(
              onTap: (index){
                setState((){
                  choiceIndex = index;
                });
              },
              physics: const BouncingScrollPhysics(),
              padding:EdgeInsets.zero,
              labelPadding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 0
              ),
              indicatorPadding: const EdgeInsets.all(20),
              indicatorColor: null,
              indicatorWeight: 0.1,
              unselectedLabelStyle:const TextStyle(fontSize: 16.0),
              controller: _tabController,
              unselectedLabelColor: const Color(0xFF8A8A8A),
              labelColor: const Color(0xff1abc00),
              isScrollable: true,
              tabs: [
                GestureDetector(
                  onTap: (){
                    setState((){
                      choiceIndex = 0;
                      _tabController!.index = 0;
                    });
                  },
                  child: Tab(
                    height:78,
                      child:Center(
                        child: Container(
                          decoration: choiceIndex==0?BoxDecoration(
                              boxShadow: const [
                                BoxShadow(color: Colors.green,spreadRadius: 2,blurRadius: 0),
                              ],
                              color: const Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(4)
                          ):BoxDecoration(
                              color: const Color(0xBFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('All',
                              style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState((){
                      choiceIndex = 1;
                      _tabController!.index = 1;
                    });
                  },
                  child: Tab(
                      child:Center(
                        child: Container(
                          decoration: choiceIndex==1? BoxDecoration(
                              boxShadow: const [
                                BoxShadow(color: Colors.green,
                                    spreadRadius: 2,blurRadius: 0),
                                BoxShadow(color: Colors.green,
                                    spreadRadius: 2,blurRadius: 0),
                              ],
                              color: const Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(4)
                          ):BoxDecoration(
                              color: const Color(0xBFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('Plants',
                              style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState((){
                      choiceIndex = 2;
                      _tabController!.index  = 2;
                    });
                  },
                  child: Tab(
                      child:Center(
                        child: Container(
                          decoration: choiceIndex==2?BoxDecoration(
                              boxShadow: const [
                                BoxShadow(color: Colors.green,spreadRadius: 2
                                    ,blurRadius: 0),
                              ],
                              color: const Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(4)
                          ):BoxDecoration(
                              color: const Color(0xBFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('Seeds',
                              style: TextStyle(fontSize: 16,
                                  fontWeight:FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    setState((){
                      choiceIndex = 3;
                      _tabController!.index  = 3;
                    });
                  },
                  child: Tab(
                      child:Center(
                        child: Container(
                          decoration: choiceIndex == 3?BoxDecoration(
                              color: const Color(0xFFF6F3F3),
                              borderRadius: BorderRadius.circular(4),
                            boxShadow: const [
                              BoxShadow(color: Colors.green,spreadRadius: 2,blurRadius: 0),]
                          ):BoxDecoration(
                              color: const Color(0xBFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('Tools',
                              style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      )
                  ),
                ),
              ],
              indicatorSize: TabBarIndicatorSize.label,
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:29.0,
                        vertical:23),
                    child: GridView.builder(
                      itemCount :10,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
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
                                                  child: Icon(
                                                      Icons.remove,
                                                      color : Colors.grey ,
                                                      size: 16.14
                                                  ),
                                                ),
                                              ),
                                              SizedBox(width:13),
                                              Text('1',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w600
                                                  )
                                              ),
                                              SizedBox(width:13),
                                              GestureDetector(
                                                child: Container(
                                                  width:16,
                                                  height:16,
                                                  color: Colors.grey.withOpacity(0.3),
                                                  child: Icon(
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
                                                Flexible(
                                                  child: Text('GARDENIA PLANET',
                                                      style:TextStyle(
                                                          fontSize: 14,
                                                        fontWeight: FontWeight.w500
                                                      )
                                                  ),
                                                ),
                                                Text('70 EGP',
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
                                                  color: Color(0xFF1ABC00),
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
            ),
          ]
        ),
        bottomNavigationBar: CurvedNavigationBar(
          animationCurve: Curves.bounceInOut,
          animationDuration: const Duration(milliseconds: 300),
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: Colors.greenAccent,
          index : 2,
          items: [
            Image.asset('assets/bottom_nav_bar_assets/leaf.png') ,
            Image.asset('assets/bottom_nav_bar_assets/qr.png') ,
            Image.asset('assets/bottom_nav_bar_assets/home.png',color: Colors.black) ,
            Image.asset('assets/bottom_nav_bar_assets/notifications.png') ,
            Image.asset('assets/bottom_nav_bar_assets/user.png') ,
          ],
          onTap: (index) {

          },
        ),
      ),
    );
  }
}