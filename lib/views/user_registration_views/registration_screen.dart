import 'package:flutter/material.dart';
import 'package:flutter_hackathon/views/user_registration_views/sign_up_screen.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
    with SingleTickerProviderStateMixin {

  TabController? _tabController;


  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body:LayoutBuilder(
          builder: (content , constraints){
            if(constraints.widthConstraints().biggest
                .width >= 1366) {
              print(constraints.widthConstraints().biggest.width);
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:105.0,right:118,top:32
                    , bottom : 41),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/splashscreen_160.png',
                          width: 121, height: 27,
                        ),
                        const SizedBox(width:259),
                        const Text('Home',
                                  style:TextStyle(
                                      fontSize: 22,
                                    fontWeight: FontWeight.w500
                                  )),
                        const Spacer(),
                        const Text('About',
                                  style:TextStyle(
                                      fontSize: 22,
                                    fontWeight: FontWeight.w500
                                  )),
                        const Spacer(),
                        const Text('Shop',
                                  style:TextStyle(
                                      fontSize: 22,
                                    fontWeight: FontWeight.w500
                                  )),
                        const  Spacer(),
                        const  Text('Blog',
                                  style:TextStyle(
                                      fontSize: 22,
                                    fontWeight: FontWeight.w500
                                  )),
                        const Spacer(),
                        MaterialButton(
                          minWidth:132,
                          height: 30,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(10.0))
                          ),
                          textColor:Colors.white,
                          elevation: 0,
                          color: const Color(0xFF1ABC00),
                          onPressed: () {

                          },
                          child: Center(
                            child: Padding(
                              padding: EdgeInsets.only(top:10.0,
                                  bottom:9,left:33,right:36
                              ),
                              child: Text('Sign Up',
                                  style:TextStyle(
                                      fontSize: 22,
                                    fontWeight: FontWeight.w500
                                  )),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 60.0, right: 60),
                    decoration : const UnderlineTabIndicator(
                        borderSide: BorderSide(color: Colors.grey)
                    ),
                    child: TabBar(
                      unselectedLabelColor: const Color(0xFF8A8A8A),
                      labelColor: const Color(0xff1abc00),
                      indicator: const UnderlineTabIndicator(
                        borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2.0,),
                      ),
                      indicatorPadding:
                      const EdgeInsets.symmetric(horizontal: 40.0),
                      tabs: const [
                        Tab(
                            child: Text('Sign up',
                              style: TextStyle(fontSize: 18),)
                        ),
                        Tab(
                            child: Text('Login',
                              style: TextStyle(fontSize: 18),)
                        )
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: const [
                        SignUpScreen(),
                        LoginScreen()
                      ],
                    ),
                  ),
                ],
              );
            }
            return Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/background_login.png'),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                        height: 90
                    ),
                    Image.asset('assets/splashscreen_160.png',
                      width: 102, height: 90,),
                    Container(
                      margin: const EdgeInsets.only(left: 60.0, right: 60),
                      child: TabBar(
                        unselectedLabelColor: const Color(0xFF8A8A8A),
                        labelColor: const Color(0xff1abc00),
                        indicator: const UnderlineTabIndicator(
                          borderSide:
                          BorderSide(color: Colors.greenAccent, width: 2.0,),
                        ),
                        indicatorPadding:
                        const EdgeInsets.symmetric(horizontal: 40.0),
                        tabs: const [
                          Tab(
                              child: Text('Sign up',
                                style: TextStyle(fontSize: 18),)
                          ),
                          Tab(
                              child: Text('Login',
                                style: TextStyle(fontSize: 18),)
                          )
                        ],
                        controller: _tabController,
                        indicatorSize: TabBarIndicatorSize.tab,
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          SignUpScreen(),
                          LoginScreen()
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            );
          },
        ),
      ),
    );
  }

}
