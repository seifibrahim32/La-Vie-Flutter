import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class BlogListScreen extends StatelessWidget{

  const BlogListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return LayoutBuilder(
      builder: (context, constraints){
      if(constraints.widthConstraints().biggest
          .width >= 1366){
        return Scaffold(
            body:SingleChildScrollView(
              child: Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(left:114.0,
                          right:118,
                          top:32,
                          bottom : 3
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
                    const SizedBox(height:29),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      color: Colors.white,
                      child: const Text('Blogs',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w600
                          )
                      ),
                    ),
                    Container(
                      color : Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:119.0
                        ),
                        child: Column(
                          children: [
                            SizedBox(height:37),
                            Image(
                              width: 1682,
                              image: NetworkImage(
                                  'https://www.nme.com/wp-content/'
                                      'uploads/2022/02/rihanna-2000x1270-1.jpg'
                              ),
                            ),
                            SizedBox(
                              height:65
                            ),
                            Row(
                              children: [
                                Text('2 days ago ',
                                    style:TextStyle(
                                        color: Colors.green,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400
                                    )
                                ),
                              ],
                            ),
                            SizedBox(
                                height:35
                            ),
                            Row(
                                children: const [
                                  Text('5 Simple Tips to treat plants',
                                      overflow: TextOverflow.ellipsis,
                                      style : TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize : 23
                                      )
                                  )
                                ]
                            ),
                            SizedBox(height: 14),
                            const Text('leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                                ' green outgrowth from the stem of  ',
                                style : TextStyle(
                                    color: Color(0xC77D7B7B),
                                    fontWeight: FontWeight.w400,
                                    fontSize : 16
                                )
                            ),
                            SizedBox(height: 134),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:79.0,
                          right:118,
                          top:32,
                          bottom : 19
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                alignment: Alignment.centerLeft,
                                'assets/splashscreen.png',
                                width: 121, height: 27,
                              ),
                              Text.rich(
                                  maxLines: 2,
                                  textAlign: TextAlign.start,
                                  softWrap: true,
                                  TextSpan(
                                      text: 'LA VIE ',
                                      children: [
                                        TextSpan(
                                          text: 'We\'re dedicated to giving '
                                              'you the very\nbest of plants,'
                                              ' with a focus on dependability',
                                          style: TextStyle(fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                      style: TextStyle(fontSize: 16,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w500)
                                  )
                              )
                            ],
                          ),
                          const SizedBox(width:137.25),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('SECTIONS',
                                  style:TextStyle(
                                      fontSize: 16,
                                      color : Colors.green,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Home',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Category',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('New',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Request To Be Seller',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 12
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('CONTACT US',
                                  style:TextStyle(
                                      fontSize: 16,
                                      color : Colors.green,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Phone 01244522323',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Phone 01244522323',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Email: Rawan@Gmail.com',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              const Text('Address : 6 October City, Giza \n'
                                  ',Egypt',
                                  style:TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                            ],
                          ),
                          const Spacer(
                              flex: 12
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('SIGN FOR OUR NEWSLETTER\n'
                                  'AND GET A 10% DISCOUNT',
                                  style:TextStyle(
                                      fontSize: 16,
                                      color : Colors.green,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children :[
                                  Container(
                                    width:156,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: 'Your Email Address',
                                      ),
                                    ),
                                  ),
                                  SizedBox(width:18),
                                  Container(
                                    height: 36,
                                    margin: EdgeInsets.only(top:15),
                                    alignment: Alignment.center,
                                    child: OutlinedButton(
                                      onPressed: () {  },
                                      child: Text('SUBMIT',

                                      style: TextStyle(
                                        color: Colors.grey,
                                        textBaseline : null,
                                        fontSize: 16,

                                        fontWeight: FontWeight.w500
                                      )),
                                    ),
                                  )
                                ]
                              ),
                              SizedBox(height:57),
                              const Text('OUR SOCIAL',
                                  style:TextStyle(
                                      fontSize: 16,
                                      color : Colors.green,
                                      fontWeight: FontWeight.w600
                                  )
                              ),
                              SizedBox(height:10),
                              Row(
                                children :[
                                  Icon(Icons.notifications),
                                  Icon(Icons.notifications),
                                  Icon(Icons.notifications),
                                ]
                              )
                            ],
                          ),
                          const Spacer(),
                          const SizedBox(width: 23),
                        ],
                      ),
                    ),
                  ]
              ),
            )
        );
      }
        return Scaffold(
            body:SingleChildScrollView(
              child: Column(
                  children:[
                    Container(
                      width: 428,
                      height:299,
                      color: Colors.blue,
                    ),
                    const SizedBox(height:37),
                    SingleChildScrollView(
                      child: Row(
                          children: const [
                            SizedBox(width:25),
                            Text('5 Simple Tips to treat plants',
                                overflow: TextOverflow.ellipsis,
                                style : TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize : 23
                                )
                            )
                          ]
                      ),
                    ),
                    Container(
                      margin : const EdgeInsets.only(
                          left:29,right:58,top:22,bottom:144
                      ),
                      child: const Text('leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  leaf, in botany, any usually flattened'
                          ' green outgrowth from the stem of  ',
                          style : TextStyle(
                              color: Color(0xC77D7B7B),
                              fontWeight: FontWeight.w400,
                              fontSize : 16
                          )
                      ),
                    )
                  ]
              ),
            )
        );
      },
    );
  }
}