import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

class QRDetails extends StatelessWidget{

  const QRDetails({super.key});

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar : AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
                      height: 87
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(width:43),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                    width:60,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3)
                                    ),
                                    height:60,
                                  child: Image.asset('assets/sunlight_icon.png',
                                    color: const Color(0xFF979797),)
                                ),
                                const SizedBox(
                                    width:24
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Row(
                                          children:   [
                                            const Text('78',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600
                                                )
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                bottom: 14
                                              ),
                                              child: const Text('%',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500
                                                  )
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                    const Text('Sun light',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )),
                                  ],
                                )
                              ]
                          ),
                          const SizedBox(height:29),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                    width:60,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3)
                                    ),
                                    height:60,
                                    child: Image.asset('assets/water_capacity_icon.png',
                                      color: const Color(0xFF979797),)
                                ),
                                const SizedBox(
                                    width:24
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Row(
                                          children: [
                                            const Text('10',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600
                                                )
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child: const Text('%',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500
                                                  )
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                    const Text('Water Capacity',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )),
                                  ],
                                )
                              ]
                          ),
                          const SizedBox(height:15),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children:[
                                Container(
                                    width:60,
                                    decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(0.3)
                                    ),
                                    height:60,
                                    child: Image.asset('assets/temperature_icon.png',
                                    color: const Color(0xFF979797),)
                                ),
                                const SizedBox(
                                    width:24
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                        alignment: Alignment.topRight,
                                        child: Row(
                                          children: [
                                            const Text('29',
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w600
                                                )
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  bottom: 14
                                              ),
                                              child: const Text('°',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500
                                                  )
                                              ),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  top: 2
                                              ),
                                              child: const Text('C',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Colors.white,
                                                      fontWeight: FontWeight.w500
                                                  )
                                              ),
                                            ),
                                          ],
                                        )
                                    ),
                                    const Text('Temperature',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400
                                        )),
                                  ],
                                )
                              ]
                          ),
                        ]
                      ),
                    ],
                  ),
                  const SizedBox(height:80),
                  Expanded(
                    child: Container(
                      width:800,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.0),
                              topLeft: Radius.circular(20.0),
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0)
                          )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 31,left:28,right:30
                        ),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text('SNAKE PLANT (SANSEVIERIA)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600
                                    )),
                                Row(
                                  children: const [
                                    SizedBox(width:4),
                                    Flexible(
                                      child: Text('Native to southern Africa, sn'
                                          'ake plants are well adapted to condit'
                                          'ions similar to those in southern reg'
                                          'ions of the United States. Because of'
                                          ' this, they may be grown outdoors for'
                                          ' part of all of the year in USDA zone'
                                          's 8 and warmer',
                                      style: TextStyle(
                                          height:2,
                                        color: Color(0xFF979797),
                                        fontSize:14,
                                        fontWeight: FontWeight.w400
                                      )),
                                    )
                                  ]
                                ),
                                const SizedBox(height:16),
                                const Text('Common Snake Plant Diseases',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600
                                    )),
                                const SizedBox(height:8),
                                Row(
                                    children:const [
                                      SizedBox(width:4),
                                      Flexible(
                                        child: Text(''
                                            'A widespread problem with snake pla'
                                            'nts is root rot. This results from '
                                            'over-watering the soil of the plant'
                                            ' and is most common in the colder m'
                                            'onths of the year. When room rot oc'
                                            'curs, the plant roots can die due t'
                                            'o a lack of oxygen and an overgrowt'
                                            'h of fungus within the soil. If the'
                                            ' snake plant\'s soil is soggy, cert'
                                            'ain microorganisms such as Rhizocto'
                                            'nia and Pythium can begin to popula'
                                            'te and multiply, spreading disease '
                                            'throughout the ',
                                            style: TextStyle(
                                                height:2,
                                                color: Color(0xFF979797),
                                                fontSize:14,
                                                fontWeight: FontWeight.w400
                                            )),
                                      )
                                    ]
                                ),
                                const SizedBox(height:24),
                                const SizedBox(height:23),
                                MaterialButton(
                                  height: 50,
                                  minWidth: 367,
                                  shape: const RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(
                                          Radius.circular(10.0)
                                      )
                                  ),
                                  textColor:   Colors.white,
                                  elevation: 0,
                                  color: Color(0xFF1ABC00),
                                  onPressed: () {
                                  },
                                  child: const SizedBox(
                                    child: Text('Go To Blog',
                                        style:TextStyle(
                                            fontSize: 16,
                                          fontWeight: FontWeight.w500
                                        )),
                                  ),
                                )
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