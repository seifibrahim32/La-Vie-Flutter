
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:multiselect/multiselect.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Column(
          children:[
            Container(
              width: double.maxFinite,
              color: Color(0xFFFBFBFB),
              child: Padding(
                padding: const EdgeInsets.only(
                    left:84.0,
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
            Container(height:40
            , color: Colors.white,
            ),
            Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: const Text('Forums',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600
                  )
              ),
            ),
            const SizedBox(height:26.0),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                    left:65.0,
                  right:40,
                ),
                child: Row(
                  children: [
                    Column(
                      children :[
                        Container(
                          width:210,
                          child: Column(
                            children: [
                              DropDownMultiSelect(
                                onChanged: (List<String> x) {
                                  setState(() {
                                  });
                                },
                                options: ['All Products'
                                  , 'Plants'
                                  , 'Tools' , 'Seeds'],
                                whenEmpty: 'Categories',
                                selectedValues: [],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height:40),
                        SizedBox(
                          width:210,
                          child: Column(
                            children: [
                              DropDownMultiSelect(

                                onChanged: (List<String> x) {
                                  setState(() {
                                  });
                                },
                                options: ['All Plants' ,
                                'Cactus',
                                'Plants',
                                'Indoor Plants',
                                'Herbs', 'Ferns','House Plants','Trees'],
                                whenEmpty: 'Plants',
                                selectedValues: [],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height:40),
                        Container(
                          width:210,
                          child: Column(
                            children: [
                              DropDownMultiSelect(
                                onChanged: (List<String> x) {
                                  setState(() {
                                  });
                                },
                                options: ['All Tools'
                                  , 'Irrigation' ,
                                  'Storage' , 'Seeds',
                                'Wheeelborrows',
                                'Gardening Accessories'],
                                whenEmpty: 'Tools',
                                selectedValues: [],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height:40),
                        SizedBox(
                          width:210,
                          child: Column(
                            children: [
                              DropDownMultiSelect(
                                onChanged: (List<String> x) {
                                  setState(() {
                                  });
                                },
                                options: ['All Seeds'
                                  , 'Tools' , 'Seeds' ,
                                  'All Products',],
                                whenEmpty: 'Seeds',
                                selectedValues: [],
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    )
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]
                    ),
                    const SizedBox(width:12.21),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                              children : [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                style: const TextStyle(fontSize: 17),
                                textAlignVertical: TextAlignVertical.center,
                                decoration: InputDecoration(
                                  filled: true,
                                  prefixIcon:
                                  const Padding(
                                    padding: EdgeInsets.only(left:22.23,right:17.54),
                                    child: Icon(Icons.search,
                                        color: Color.fromARGB(
                                          188, 6, 168, 12,)
                                    ),
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
                            ),
                            Spacer(),
                                Text.rich(
                                    TextSpan(
                                        text: 'Viewing ',
                                        children: <InlineSpan>[
                                          TextSpan(
                                            text: '20',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: ' of ',
                                          ),
                                          TextSpan(
                                            text: '100 ',
                                            style: TextStyle(fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text: 'products ',
                                          ),
                                        ]
                                    )
                                ),
                          ]),
                          const SizedBox(height: 20),
                          Expanded(
                              child: GridView.builder(
                                shrinkWrap: true,
                                itemCount :10,
                                gridDelegate: const
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 66,
                                    mainAxisSpacing: 74,
                                    mainAxisExtent: 900
                                ),
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.white,
                                        boxShadow: const [
                                          BoxShadow(
                                            offset: Offset(12,11),
                                            spreadRadius: 4,
                                            color: Color(0x1A2E2E2E),
                                            blurRadius: 30,
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children:[
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.network(
                                                  'https://www.nme.com/wp-content/'
                                                      'uploads/2022/02/rihanna-2000x'
                                                      '1270-1.jpg'
                                                  ,
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8.0),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children : [
                                                      SizedBox(height:20),
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Flexible(
                                                            child: Text('Cactus Plant ',
                                                                style:TextStyle(
                                                                    fontSize: 16,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            ),
                                                          ),
                                                          Text('300 EGP ',
                                                              style:TextStyle(
                                                                  color: Colors.green,
                                                                  fontSize: 24,
                                                                  fontWeight: FontWeight.w500
                                                              )
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height:14),
                                                      Text('leaf, in botany, any usually'
                                                          ' flattened green outgrowth from the stem of  leaf, in botany, any usually'
                                                          ' flattened green outgrowth from the stem of  leaf, in botany, any usually'
                                                          ' flattened green outgrowth from the stem of  leaf, in botany, any usually'
                                                          ' flattened green outgrowth from the stem of  leaf, in botany, any usually'
                                                          ' flattened green outgrowth from the stem of  ',
                                                          maxLines:5,
                                                          style:TextStyle(
                                                              fontSize: 16,
                                                              fontWeight: FontWeight.w500,
                                                            color:  Colors.grey
                                                          )
                                                      ),
                                                      Spacer(),
                                                      Padding(
                                                        padding: const EdgeInsets.all(8.0),
                                                        child: Center(
                                                          child: MaterialButton(
                                                            height: 63,
                                                            minWidth: 312,
                                                            shape: const RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.all(
                                                                    Radius.circular(5.0)
                                                                )
                                                            ),
                                                            textColor: Colors.white,
                                                            elevation: 0,
                                                            color: Colors.green,
                                                            onPressed: () {
                                                            },
                                                            child: const SizedBox(
                                                              child: Text('Add To Cart',
                                                                  style:TextStyle(
                                                                      fontSize: 16
                                                                  )),
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                    ]
                                                ),
                                              ),
                                            )
                                          ]
                                      )
                                  );
                                },
                              )
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]
      ),
    );
  }
}