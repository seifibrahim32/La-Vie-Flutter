import 'package:flutter/material.dart';

Widget getToolsViews() =>
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
    );