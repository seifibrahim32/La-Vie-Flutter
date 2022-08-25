
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:google_fonts/google_fonts.dart';

class WelcomeWebScreen extends StatefulWidget{

  const WelcomeWebScreen({super.key});

  @override
  State<WelcomeWebScreen> createState() => _WelcomeWebScreenState();
}

class _WelcomeWebScreenState extends State<WelcomeWebScreen> {

  bool selected = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds:3),() => showAlert(context));
  }

  final List<Widget> _rowsCircular = [
    Row(
        children:[
          SizedBox(width:456),
          CircleAvatar(
              backgroundColor: Colors.white,
              radius:10,
              child : CircleAvatar(
              radius:5,
              backgroundColor: Colors.green,
            )
          ),
          SizedBox(width:10),
          Text('Leaves',
          style : GoogleFonts.poppins(fontSize: 25)
          )
        ]
    ),
    Column(
      children: [
        SizedBox(height:100),
        Row(
            children:[
              SizedBox(width:550),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:10,
                  child : CircleAvatar(
                    radius:5,
                    backgroundColor: Colors.green,
                  )
              ),
              SizedBox(width:5),
              Text('Branches',
                  style : GoogleFonts.poppins(fontSize: 25)
              )
            ]
        ),
      ],
    ),
    Column(
      children: [
        SizedBox(height:70),
        Row(
            children:[
              SizedBox(width:480),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:10,
                  child : CircleAvatar(
                    radius:5,
                    backgroundColor: Colors.green,
                  )
              ),
              SizedBox(width:5),
              Text('Trunk',
                  style : GoogleFonts.poppins(fontSize: 25)
              )
            ]
        ),
      ],
    ),
    Column(
      children: [
        SizedBox(height:100),
        Row(
            children:[
              SizedBox(width:410),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius:10,
                  child : CircleAvatar(
                    radius:5,
                    backgroundColor: Colors.green,
                  )
              ),
              SizedBox(width:5),
              Text('Roots',
                  style : GoogleFonts.poppins(fontSize: 25)
              )
            ]
        ),
      ],
    ),
  ];

  void showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Row(
            children:[
              Image.asset('assets/web/alert-dialog-web-home.png',
                fit: BoxFit.fitHeight,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(13),
                  child: Column(
                      children:[
                        Expanded(
                            child: Image.asset('assets/splashscreen_160.png',
                            width:100,height:40)),
                        Text('Get Seeds For Free',
                            style: TextStyle(
                                fontSize: 23
                            )
                        ),
                        Text('Enter Your Address',
                            style: TextStyle(
                                fontSize: 14
                            )
                        ),
                        SizedBox(height:88),
                        Expanded(
                          child: TextField(
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: const TextStyle(fontSize: 17),
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Theme.of(context).inputDecorationTheme.fillColor,
                              hintText: 'Address',
                              contentPadding: const EdgeInsets.all(10.0),
                            ),
                          ),
                        ),
                        SizedBox(height:40),
                        MaterialButton(
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
                            child: Text('Send',
                                style:TextStyle(
                                    fontSize: 16
                                )),
                          ),
                        ),
                        SizedBox(height:19),
                        MaterialButton(
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
                          color: Colors.grey,
                          onPressed: () {
                          },
                          child: const SizedBox(
                            child: Text('Save For Later',
                                style:TextStyle(
                                    fontSize: 16
                                )),
                          ),
                        ),
                      ]
                  )
                ),
              )
            ]
          ),
        ));
  }

  @override
  Widget build(BuildContext context){
    FlutterNativeSplash.remove();

    return Scaffold(
      extendBody : true,
      body:
        Stack(
          children : [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset('assets/web/home_screen_asset.png',
                  scale: 1.4) ,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children : [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        width: double.maxFinite,
                        color: Colors.transparent,
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
                    ),
                    Stack(
                      children: [
                        Align(
                          widthFactor: 35,
                          alignment: Alignment.topRight,
                          child: Tooltip(
                            preferBelow: false,
                            message: 'Answer some questions and get points',
                            child: CircleAvatar(
                              backgroundColor: Colors.greenAccent,
                              child: IconButton(
                                color: Colors.white,
                                onPressed: () {  },
                                icon: Icon(Icons.question_mark,),

                              ),
                            )
                          ),
                        ),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Container(
                                    width:560,
                                    height:844,
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(390) ,
                                          topRight: Radius.circular(390) ,
                                        )
                                    )
                                ),
                                Container(
                                    width:545,
                                    height:844,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(390) ,
                                          topRight: Radius.circular(390) ,
                                        )
                                    )
                                ),
                                Image(
                                  gaplessPlayback:true,
                                  image : AssetImage(
                                    'assets/web/full_tree_web.png',
                                  ),
                                ),
                                Column(
                                   children:  _rowsCircular
                                )
                              ],
                            ),
                            Spacer(),
                            Expanded(
                              child: Column(
                                mainAxisAlignment : MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children : [
                                  Text('Perfect way to plant in house',
                                      style: GoogleFonts.poppins(fontSize: 48,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent)
                                  ),
                                  SizedBox(
                                    width:994,
                                    child:
                                    Text('leaf, in botany, any usually flattened green'
                                          ' outgrowth from the stem of a vascular plant.'
                                          ' As the primary sites of photosynthesis, leaves'
                                          ' manufacture food for plants, which '
                                          'in turn ultimately nourish and sustain all land'
                                          ' animals.',
                                          softWrap: true,
                                          maxLines: 5,
                                          style: GoogleFonts.poppins(fontSize: 18)
                                      ),
                                  ),
                                  SizedBox(
                                    height:10
                                  ),
                                  MaterialButton(
                                    height: 63,
                                    minWidth: 312,
                                    shape:   RoundedRectangleBorder(
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
                                    child:  SizedBox(
                                      child: Text(
                                          'Explore Now',
                                        style: GoogleFonts.poppins(
                                            fontSize: 18
                                        ),
                                      ),
                                    ),
                                  )

                                ]
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children :[
                          SizedBox(width:120),
                          Text('Popular\nCategories',
                              style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )
                          ),
                          SizedBox(height:26),
                          Container(
                              margin: EdgeInsets.only(top:4),
                              height:4,width:50,
                              color : Colors.black
                          )
                        ]
                    ),
                    SingleChildScrollView(
                      scrollDirection : Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      primary: true,
                      child: SizedBox(
                        height:320,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:218.0
                          ),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  children:[
                                    Expanded(
                                      child: Container(
                                        width: 200,
                                        height: 200,
                                        decoration : BoxDecoration(
                                            color: Colors.black,
                                          borderRadius: BorderRadius.circular
                                            (500)
                                        ),
                                      ),
                                    ),
                                    SizedBox(height:11),
                                    Text('Tools',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,

                                    )
                                    )
                                  ]
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(
                                  width: 12
                              );
                            },
                            itemCount: 10,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:40),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children :[
                          SizedBox(width:120),
                          Text('Best sellers',style: TextStyle(
                              fontSize: 30,
                            fontWeight: FontWeight.bold,
                          )
                          ),
                          SizedBox(width:26),
                          Container(
                              margin: EdgeInsets.only(top:4),
                              height:4,width:50,
                              color : Colors.black
                          )
                        ]
                    ),
                    SizedBox(height:40),
                    GestureDetector(
                      onTap : (){
                        print(selected);

                          setState(()=>selected = !selected);

                      },
                      child: SingleChildScrollView(
                        scrollDirection : Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        primary: true,
                        child: SizedBox(
                          height:320,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal:218.0),
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              primary: false,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: index%2!=0?const EdgeInsets.only(top:
                                  16.0):const EdgeInsets.only(bottom:16.0),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children:[
                                        Expanded(
                                          child: Container(
                                            color: Colors.black,
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.circular(20),
                                              child: Image.network(
                                                'https://www.nme.com/wp-content/'
                                                    'uploads/2022/02/rihanna-2000x'
                                                    '1270-1.jpg', height:110,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height:20),
                                        Flexible(
                                          child: Text('SPIDER PLANT ',
                                              style:TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                        ),
                                        SizedBox(height:11),
                                        Flexible(
                                          child: Text('190 EGP ',
                                              softWrap: false,
                                              style:TextStyle(
                                                  fontSize: 14,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                        ),
                                      ]
                                  ),
                                );
                              },
                              separatorBuilder: (BuildContext context, int index) {
                                return const SizedBox(
                                    width: 12
                                );
                              },
                              itemCount: 10,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children :[
                        SizedBox(width:120),
                        Text('Blogs',
                            style: GoogleFonts.poppins(
                              fontSize: 30,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                        SizedBox(width:26),
                        Container(
                          margin: EdgeInsets.only(top:4),
                          height:4,width:50,
                          color : Colors.black
                        )
                      ]
                    ),
                    SizedBox(height:40),
                    SingleChildScrollView(
                      scrollDirection : Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      primary: true,
                      child: SizedBox(
                        height:410,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal:218.0),
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            primary: false,
                            itemBuilder: (BuildContext context, int index) {
                              return Flexible(
                                child: Container(
                                    width:300,
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
                                          clipBehavior: Clip.antiAliasWithSaveLayer,
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(
                                            'https://www.nme.com/wp-content/'
                                                'uploads/2022/02/rihanna-2000x'
                                                '1270-1.jpg',
                                            width:300
                                          ),
                                        ),
                                        SizedBox(height:20),
                                        Flexible(
                                          child: Text('2 days ago ',
                                              style:TextStyle(
                                                  color: Colors.green,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                        ),
                                        SizedBox(height:11),
                                        Flexible(
                                          child: Text('5 Simple Tips treat plant ',
                                              softWrap: false,
                                              style:TextStyle(
                                                  fontSize: 14,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.w500
                                              )
                                          ),
                                        ),
                                        SizedBox(height:14),
                                        Text(

                                          'leaf, in botany, any usually'
                                            ' flattened green outgrowth from the stem of leaf\n, in botany,\n any usually'
                                            ' flattened gree\nn outgrowth from the stem of leaf, in botany,\n any usually'
                                            ' flattened green outgrowth from the stem of leaf, in botany\n, any usually'
                                            ' flattened green outgrowth from the stem of leaf, in botany\n, any usually'
                                            ' flattened green outgrowth from the stem of   ',
                                            maxLines:5,
                                            softWrap: true,
                                            style:TextStyle(
                                                fontSize: 12,

                                                fontWeight: FontWeight.w500
                                            ),

                                        )
                                      ]
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (BuildContext context, int index) {
                              return const SizedBox(
                                  width: 12
                              );
                            },
                            itemCount: 10,
                          ),
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        SizedBox(height:84),
                        Row(
                            children : [
                              SizedBox(width:150),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children : [
                                    Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children :[
                                          Text('About Us',
                                              style: TextStyle(
                                                  fontSize: 24, fontWeight: FontWeight.bold
                                              )
                                          ),
                                        ]
                                    ),
                                    SizedBox(height:10),
                                    Text('You can install La Vie mobile application and'
                                        ' enjoy with new features,\nearn more points and '
                                        'get discounts \nAlso you can scan QR codes in '
                                        'your plants’ pots so that you can get\ndiscount '
                                        'on everything in the website up to 70%',
                                        textDirection: TextDirection.ltr,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize:20
                                        )),
                                    SizedBox(height:4),

                                  ]
                              ),
                              SizedBox(width:30),
                              Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft ,
                                    child: Container(
                                      width: 265,
                                      height: 225,
                                      decoration : BoxDecoration(
                                          color: Colors.transparent,
                                        borderRadius: BorderRadius.circular(10),
                                        border :  Border.all(
                                          color: Colors.green
                                        )
                                      )
                                    )
                                  ),
                                  Positioned(
                                    top:-20,
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: Image.asset('assets/web/About_Us_home.png',
                                          scale: 2.5
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ]
                        ),
                      ],
                    ),
                    Row(
                      children : [
                        Expanded(
                          flex:14,
                          child: Image.asset('assets/web/mobile_application.png',
                          scale: 2.4
                          ),
                        ),
                        Expanded(
                          flex:6,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                            children : [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children :[
                                    Text('Mobile Application',
                                        style: TextStyle(
                                        fontSize: 24, fontWeight: FontWeight.bold
                                        )
                                    ),
                                    SizedBox(width:26),
                                    Container(
                                        margin: EdgeInsets.only(top:4),
                                        height:4,width:50,
                                        color : Colors.black
                                    )
                                  ]
                              ),
                              SizedBox(height:10),
                              Text('You can install La Vie mobile application and'
                                  ' enjoy with new features,\nearn more points and '
                                  'get discounts \nAlso you can scan QR codes in '
                                  'your plants’ pots so that you can get\ndiscount '
                                  'on everything in the website up to 70%',
                                  textDirection: TextDirection.ltr,
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize:20
                                  )),
                              SizedBox(height:4),
                              Text('Install by',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize:20,
                                    fontWeight: FontWeight.bold
                                  )),
                              SizedBox(height:13),
                              Row(
                                children : [

                                  MaterialButton(
                                    height: 43,
                                    minWidth: 172,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(5.0)
                                        )
                                    ),
                                    textColor:  Colors.white,
                                    elevation: 0,
                                    color:  Colors.black,
                                    onPressed: () {
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset('assets/web/play_store_icon.png',
                                          scale: 2.3,
                                        ),
                                        SizedBox(width:9),
                                        const SizedBox(
                                          child: Text('Play Store',
                                              style:TextStyle(
                                                  fontSize: 16
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width:6),
                                  MaterialButton(
                                    height: 43,
                                    minWidth: 172,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.all(
                                            Radius.circular(5.0)
                                        )
                                    ),
                                    textColor: Colors.white,
                                    elevation: 0,
                                    color: Colors.black,
                                    onPressed: () {
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset('assets/web/app_store_icon.png',
                                          scale: 2,
                                        ),
                                        SizedBox(width:4),
                                        Text('App Store',
                                            style:TextStyle(
                                                fontSize: 16
                                            )),
                                      ],
                                    ),
                                  )
                                ]
                              )

                            ]
                          ),
                        )
                      ]
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
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
                    ),
                  ]
                ),
              ),
            )
          ]
        )
    );
  }
}