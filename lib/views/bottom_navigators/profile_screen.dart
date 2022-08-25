import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../web_views/profile_web.dart';
class ProfileScreen extends StatefulWidget{

  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin{

  TabController? _tabController;

  final List<Widget> _pageItems = [getPersonalInformationWebView() ,
    getProfilePictureWebView()];

  PageController _pageController = PageController();


  @override
  void initState() {

    super.initState();

    _tabController = TabController(
        initialIndex: 0,
        length: 2, vsync: this
    );

  }

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return LayoutBuilder(
      builder: (context,constraints){
        if(constraints.widthConstraints().biggest
            .width >= 1366){
          return DefaultTabController(
            length: 2,
            child: Scaffold(
              extendBodyBehindAppBar: true,
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Container(
                    color: const Color(0xFFF9FFF8),
                    child: Padding(
                      padding: const EdgeInsets.only(left:84.0,
                          right:118,
                          top:32,
                          bottom : 10
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/splashscreen.png',
                            width: 121, height: 27,
                          ),
                          const SizedBox(width:133),
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
                  ),
                  Column(
                      children : [
                        Container(
                            height:29,
                            color: Colors.white
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          color: Colors.white,
                          child: const Text('My Profile',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w600
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:119.0),
                          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                            children : [
                              Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(color: Colors.grey,
                                              width: 2.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      TabBar(
                                        onTap: (index){
                                          setState((){
                                            index == 1? _pageController.nextPage(
                                              duration: Duration(milliseconds: 200),
                                              curve: Curves.easeInOut,
                                            ):
                                            _pageController.previousPage(
                                              duration: Duration(milliseconds: 200),
                                              curve: Curves.easeInOut,
                                            );
                                          });
                                        },
                                        labelPadding: const EdgeInsets.only(left: 10, right: 0),
                                        unselectedLabelColor: const Color(0xFF8A8A8A),
                                        labelColor: const Color(0xff1abc00),
                                        indicator: const UnderlineTabIndicator(
                                          borderSide:
                                          BorderSide(color: Colors.greenAccent,
                                            strokeAlign: StrokeAlign.outside,width: 2.0,),
                                        ),
                                        isScrollable: true,
                                        indicatorPadding:
                                        const EdgeInsets.symmetric(horizontal: 20.0),
                                        tabs: [
                                          SizedBox(
                                            width:272,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: const [
                                                Tab(
                                                  child: Text('Personal Information',
                                                    style: TextStyle(fontSize: 18),),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            width:212,
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: const [
                                                  Tab(
                                                    child: Text('Profile Picture',
                                                      style: TextStyle(fontSize: 18),
                                                    ),
                                                  ),
                                                ]
                                            ),
                                          ),
                                        ],
                                        controller: _tabController,
                                        indicatorSize: TabBarIndicatorSize.tab,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height:29),
                              SingleChildScrollView(
                                child: SizedBox(
                                  width:double.infinity,
                                  height:460,
                                  child: PageView.builder(
                                    physics: BouncingScrollPhysics(),
                                    controller: _pageController,
                                    itemCount: _pageItems.length,
                                    itemBuilder: (ctx,index){
                                      return _pageItems[index];
                                    },
                                  ),
                                ),
                              )
                            ]
                          ),
                        )
                      ]
                  ),
                ],
              ),
            ),
          );
        }
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar : AppBar(
            backgroundColor: Colors.transparent,
            leading: const Icon(Icons.arrow_back),
            elevation: 0,
            actions: [
              IconButton(
                icon :
                const Icon(Icons.more_horiz),
                onPressed: () {
                },
              )
            ],
          ),
          body: Stack(
              fit: StackFit.passthrough,
              children:[
                Container(
                    alignment: Alignment.topCenter,
                    width: 428,
                    height: 413,
                    decoration : BoxDecoration(
                      image: DecorationImage(
                          isAntiAlias: false,
                          fit: BoxFit.fitHeight,
                          image: const NetworkImage(
                              'https://phantom-marca.unidadeditorial.es/b399033c5b00cae15cc2240663586c14/resize/1320/f/jpg/assets/multimedia/imagenes/2022/07/25/16587638436607.jpg'
                          ),
                          colorFilter: ColorFilter.mode(Colors.white.withOpacity(0.8), BlendMode.modulate,)

                      ),
                    )
                ),
                Column(
                    children : [
                      const SizedBox(
                          height: 90
                      ),
                      const Align(
                        alignment : Alignment.bottomCenter,
                        child: CircleAvatar(
                          radius: 90,
                          backgroundImage: NetworkImage(
                            'https://www.nme.com/wp-content/uploads/2022/02/rihanna-2000x1270-1.jpg',
                          ),
                        ),
                      ),
                      const SizedBox(height:13),
                      const Text('Rihanna',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight:FontWeight.w700,
                              fontSize: 24.88
                          )),
                      const SizedBox(height:27),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 31,left:24,right:26
                            ),
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                        width: 378,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            color: const Color(0xFFF3FEF1)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(top:24.0,left:15,bottom:18),
                                          child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children:[
                                                Image.asset('assets/points_stars.png'),
                                                const SizedBox(width:13),
                                                const Text('You have 30 points',
                                                    style: TextStyle(
                                                        fontSize: 15.88,
                                                        fontWeight: FontWeight.w500
                                                    ))
                                              ]),
                                        )
                                    ),
                                    const SizedBox(height:24),
                                    const Text('Edit Profile',
                                        style: TextStyle(
                                            fontSize: 19.88,
                                            fontWeight: FontWeight.w500
                                        )),
                                    const SizedBox(height:23),
                                    GestureDetector(
                                      onTap : (){},
                                      child: Container(
                                        width: 378,
                                        height: 85,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0x30000000)),
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                              offset: Offset(0, 22),
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
                                                  Image.asset(
                                                      'assets/change_option_profile.png'
                                                  ),
                                                  const SizedBox(width: 23),
                                                  const Text('Change Name',
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style : TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize : 18
                                                      )),
                                                  const Spacer(),
                                                  const Icon(Icons.arrow_forward,
                                                      color: Colors.green)
                                                ]
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height:26),
                                    GestureDetector(
                                      onTap : (){},
                                      child: Container(
                                        width: 378,
                                        height: 85,
                                        decoration: BoxDecoration(
                                          border: Border.all(color: const Color(0x30000000)),
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.white,
                                          boxShadow: const [
                                            BoxShadow(
                                              offset: Offset(0, 22),
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
                                                  Image.asset(
                                                      'assets/change_option_profile.png'
                                                  ),
                                                  const SizedBox(width: 23),
                                                  const Text('Change Email',
                                                      overflow: TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      style : TextStyle(
                                                          fontWeight: FontWeight.bold,
                                                          fontSize : 18
                                                      )),
                                                  Spacer(),
                                                  Icon(Icons.arrow_forward,
                                                      color : Colors.green)
                                                ]
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]
                              ),
                            ),
                          ),
                        ),
                      )
                    ]
                ),
              ]
          ),
        );
      },
    );
  }
}