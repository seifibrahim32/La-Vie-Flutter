import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController? _tabController;

  int choiceIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          children:[
            const SizedBox(height:50),
            Center(child: Image.asset('assets/lavie.png',width:102,height:33)),
            const SizedBox(height:40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:16),
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
                  ) ),
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
            const SizedBox(height:26),
            Material(
              child: TabBar( indicatorWeight: 0,
                labelPadding: const EdgeInsets.symmetric(horizontal:10),

                unselectedLabelStyle:
                Theme.of(context).tabBarTheme.unselectedLabelStyle,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
              ),
                controller: _tabController,
                unselectedLabelColor: const Color(0xFF8A8A8A),
                labelColor: const Color(0xff1abc00),
                isScrollable: true,
                tabs: [
                  Tab(
                      child:GestureDetector(
                        onTap : (){
                          choiceIndex = 0;
                        },
                        child: Container(
                          decoration: choiceIndex==0?BoxDecoration(
                              boxShadow: const [
                                BoxShadow(color: Colors.green, spreadRadius: 2,blurRadius: 0),
                              ],
                              color: const Color(0xFFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ):BoxDecoration(
                              color: const Color(0xFFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: Center(
                            child: Text('All',
                              style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                  ),
                  GestureDetector(
                      onTap: (){
                        setState((){
                          choiceIndex = 1;
                        });
                      },
                    child: Tab(
                        child:choiceIndex == 1?Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFFFFFFF),
                            borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('Plants',
                              style: TextStyle(fontSize: 16),),
                          ),
                        ):Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('Plants',
                              style: TextStyle(fontSize: 16),),
                          ),
                        )
                    ),
                  ),
                  Tab(
                      child:GestureDetector(
                        onTap: (){
                              setState((){
                                choiceIndex = 2 ;
                              });
                            },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: const Center(
                            child: Text('Seeds',
                              style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      )
                  ),
                  Tab(
                      child:GestureDetector(
                        onTap:(){

                          choiceIndex = 3 ;
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFFF6F3F3),
                              borderRadius: BorderRadius.circular(4)
                          ),
                          height:35,
                          width:95,
                          child: Center(
                            child: Text('Tools',
                              style: TextStyle(fontSize: 16),),
                          ),
                        ),
                      )
                  ),
                ],
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),

            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Column(
                    children: [
                      const SizedBox(height:53.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Email',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your e-mail',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:30.96),
                            const Text('Password',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your password',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:36.37),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))
                              ),
                              textColor:Colors.white,
                              elevation: 0,
                              color: const Color(0xFF1ABC00),
                              onPressed: () {

                              },
                              child: const SizedBox(
                                width: double.infinity,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top:15.0,
                                        bottom:15.24),
                                    child: Text('Login',
                                        style:TextStyle(
                                            fontSize: 16
                                        )),
                                  ),
                                ),
                              ),),
                            const SizedBox(height:33.1),
                            Stack(
                              alignment: Alignment.center,
                              children:  [
                                const SizedBox(
                                  width:double.infinity,
                                  height:8,
                                  child: Divider(

                                    thickness: 1, // thickness of the line.
                                    indent: 0, // empty space to the leading edge of divider.
                                    endIndent: 0, // empty space to the trailing edge of the divider.
                                    color: Color(0xFF979797),
                                    height: 20, // The divider's height extent.
                                  ),
                                ),
                                Container(
                                    color : Colors.white,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal:5.0),
                                      child: Text('or continue with',
                                          style:TextStyle(
                                              color: Color(0xFF979797)
                                          )),
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height:22.15),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  InkWell(child: Image.asset('assets/google_login_icon.png',
                                      width:32.03,height:33.04)),
                                  const SizedBox(width:31.55),
                                  InkWell(child: Image.asset('assets/facebook_login_icon.png',
                                      width:15.79,height:25.95))
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),Column(
                    children: [
                      const SizedBox(height:53.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Email',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your e-mail',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:30.96),
                            const Text('Password',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your password',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:36.37),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))
                              ),
                              textColor:Colors.white,
                              elevation: 0,
                              color: const Color(0xFF1ABC00),
                              onPressed: () {

                              },
                              child: const SizedBox(
                                width: double.infinity,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top:15.0,
                                        bottom:15.24),
                                    child: Text('Login',
                                        style:TextStyle(
                                            fontSize: 16
                                        )),
                                  ),
                                ),
                              ),),
                            const SizedBox(height:33.1),
                            Stack(
                              alignment: Alignment.center,
                              children:  [
                                const SizedBox(
                                  width:double.infinity,
                                  height:8,
                                  child: Divider(

                                    thickness: 1, // thickness of the line.
                                    indent: 0, // empty space to the leading edge of divider.
                                    endIndent: 0, // empty space to the trailing edge of the divider.
                                    color: Color(0xFF979797),
                                    height: 20, // The divider's height extent.
                                  ),
                                ),
                                Container(
                                    color : Colors.white,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal:5.0),
                                      child: Text('or continue with',
                                          style:TextStyle(
                                              color: Color(0xFF979797)
                                          )),
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height:22.15),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  InkWell(child: Image.asset('assets/google_login_icon.png',
                                      width:32.03,height:33.04)),
                                  const SizedBox(width:31.55),
                                  InkWell(child: Image.asset('assets/facebook_login_icon.png',
                                      width:15.79,height:25.95))
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),Column(
                    children: [
                      const SizedBox(height:53.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Email',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your e-mail',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:30.96),
                            const Text('Password',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your password',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:36.37),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))
                              ),
                              textColor:Colors.white,
                              elevation: 0,
                              color: const Color(0xFF1ABC00),
                              onPressed: () {

                              },
                              child: const SizedBox(
                                width: double.infinity,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top:15.0,
                                        bottom:15.24),
                                    child: Text('Login',
                                        style:TextStyle(
                                            fontSize: 16
                                        )),
                                  ),
                                ),
                              ),),
                            const SizedBox(height:33.1),
                            Stack(
                              alignment: Alignment.center,
                              children:  [
                                const SizedBox(
                                  width:double.infinity,
                                  height:8,
                                  child: Divider(

                                    thickness: 1, // thickness of the line.
                                    indent: 0, // empty space to the leading edge of divider.
                                    endIndent: 0, // empty space to the trailing edge of the divider.
                                    color: Color(0xFF979797),
                                    height: 20, // The divider's height extent.
                                  ),
                                ),
                                Container(
                                    color : Colors.white,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal:5.0),
                                      child: Text('or continue with',
                                          style:TextStyle(
                                              color: Color(0xFF979797)
                                          )),
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height:22.15),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  InkWell(child: Image.asset('assets/google_login_icon.png',
                                      width:32.03,height:33.04)),
                                  const SizedBox(width:31.55),
                                  InkWell(child: Image.asset('assets/facebook_login_icon.png',
                                      width:15.79,height:25.95))
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),Column(
                    children: [
                      const SizedBox(height:53.5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal:45.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Email',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your e-mail',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:30.96),
                            const Text('Password',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14
                                )),
                            const SizedBox(height:3.8),
                            TextField(
                              autofocus: false,
                              style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Type your password',
                                contentPadding:
                                const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 0.0),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                disabledBorder: UnderlineInputBorder(
                                  borderSide: const BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.circular(25.7),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color(
                                      0xFF939393)),
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                              ),
                            ),
                            const SizedBox(height:36.37),
                            MaterialButton(
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0))
                              ),
                              textColor:Colors.white,
                              elevation: 0,
                              color: const Color(0xFF1ABC00),
                              onPressed: () {

                              },
                              child: const SizedBox(
                                width: double.infinity,
                                child: Center(
                                  child: Padding(
                                    padding: EdgeInsets.only(top:15.0,
                                        bottom:15.24),
                                    child: Text('Login',
                                        style:TextStyle(
                                            fontSize: 16
                                        )),
                                  ),
                                ),
                              ),),
                            const SizedBox(height:33.1),
                            Stack(
                              alignment: Alignment.center,
                              children:  [
                                const SizedBox(
                                  width:double.infinity,
                                  height:8,
                                  child: Divider(

                                    thickness: 1, // thickness of the line.
                                    indent: 0, // empty space to the leading edge of divider.
                                    endIndent: 0, // empty space to the trailing edge of the divider.
                                    color: Color(0xFF979797),
                                    height: 20, // The divider's height extent.
                                  ),
                                ),
                                Container(
                                    color : Colors.white,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(horizontal:5.0),
                                      child: Text('or continue with',
                                          style:TextStyle(
                                              color: Color(0xFF979797)
                                          )),
                                    )
                                )
                              ],
                            ),
                            const SizedBox(height:22.15),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:[
                                  InkWell(child: Image.asset('assets/google_login_icon.png',
                                      width:32.03,height:33.04)),
                                  const SizedBox(width:31.55),
                                  InkWell(child: Image.asset('assets/facebook_login_icon.png',
                                      width:15.79,height:25.95))
                                ])
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ]
        )
      ),
    );
  }
}