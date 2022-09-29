import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../home_main_screen_get_views/getAllKinds.dart';
import '../home_main_screen_get_views/getPlantsView.dart';
import '../home_main_screen_get_views/getSeedsViews.dart';
import '../home_main_screen_get_views/getToolsView.dart';
class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {

  int choiceIndex = 0;

  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        initialIndex: 0,
        length: 4, vsync: this
    );
  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return DefaultTabController(
      length: 4,
      child: Column(
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
                  ]
              ),
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
                  getAllKinds(),
                  getPlantsViews(),
                  getSeedsViews(),
                  getToolsViews()
                ],
              ),
            ),
          ]
      ),
    );
  }
}