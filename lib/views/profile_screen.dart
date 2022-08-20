import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class ProfileScreen extends StatelessWidget{

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
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
  }
}