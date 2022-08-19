import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class DiscussionScreen extends StatefulWidget{

  const DiscussionScreen({super.key});

  @override
  State<DiscussionScreen> createState() => _DiscussionScreenState();
}

class _DiscussionScreenState extends State<DiscussionScreen> {

  bool isAllForumsClicked = true;
  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        elevation : 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back,color: Colors.black),
          onPressed: () {  },
        ),
        centerTitle: true,
        title: const Text('Discussion Forums',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w700,
          fontSize: 21,
        )),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {

          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left : 24.0,right:26),
          child: Column(
            children:[
              SizedBox(
                height: 53.16,
                child: TextField(
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  style: const TextStyle(fontSize: 17),
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    filled: true,
                    prefixIcon:
                    const Padding(
                      padding: EdgeInsets.only(left:29.13,
                          right:17.54),
                      child: Icon(Icons.search,color:Color.fromARGB(255, 151,
                        151, 151,)),
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
              const SizedBox(height:15.59),
              Row(
                  children : [
                    GestureDetector(
                      onTap :(){
                        setState((){
                          isAllForumsClicked = true;
                        });
                      },
                      child: Container(
                        width :111,
                        height:26,
                          decoration : BoxDecoration(
                            border: Border.all(
                                color : isAllForumsClicked?Colors.green:Colors.grey
                            ),
                              color : isAllForumsClicked?Colors.green:Colors.white ,
                              borderRadius: BorderRadius.circular(
                                  5
                              )
                          ),
                        child:   Center(
                          child: Text('All forums',
                              style : TextStyle(
                                  color: isAllForumsClicked?Colors.white:Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize : 14
                              )),
                        )
                      ),
                    ),
                    const SizedBox(width : 10),
                    GestureDetector(
                      onTap :(){
                        setState((){
                          isAllForumsClicked = false;
                        });
                      },
                      child: Container(
                          width :111,
                          height:26,
                          decoration : BoxDecoration(
                              color : !isAllForumsClicked?Colors.green:Colors.white,
                              border: Border.all(
                                color : !isAllForumsClicked?Colors.grey:
                                Colors.grey ,
                                width: 1,
                              ),
                            borderRadius: BorderRadius.circular(
                              5
                            )
                          ),
                          child:   Center(
                              child: Text('My forums',
                              style : TextStyle(
                                  color: !isAllForumsClicked?Colors.white:Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize : 14
                              )
                          )  )
                      ),
                    )
                  ]
              ),
              const SizedBox(height:30),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  primary : true,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 6,
                    separatorBuilder: (ctx,index){
                      return const SizedBox(
                        height : 30
                      );
                    },
                    itemBuilder: (ctx,index){
                      return Expanded(
                        child: Column(
                          children:[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    color: Colors.black.withOpacity(0.1),
                                    width: 1,
                                  ),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0, 1),
                                  spreadRadius: 1,
                                  blurRadius: 1
                                )]
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(height: 15.35),
                                  Row(
                                    children : [
                                      const SizedBox(width: 14.25),
                                      const CircleAvatar(
                                        radius: 21,
                                      ),
                                      const SizedBox(width: 11.88),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.
                                        start,
                                        crossAxisAlignment: CrossAxisAlignment.
                                        start,
                                        children: const [
                                          Text('Mayar Mohamed',
                                              style : TextStyle(
                                                  color: Colors.black,
                                                  fontSize : 13,
                                                  fontWeight: FontWeight.w700
                                              )) ,
                                          Text('a month ago',
                                              style : TextStyle(
                                                  color: Color(0xD6979797),
                                                  fontSize : 11,
                                                  fontWeight: FontWeight.w400
                                              )
                                          ) ,
                                        ],
                                      )
                                    ]
                                  ),
                                  const SizedBox(height: 23.61),
                                  Row(
                                      children:[
                                    SizedBox(width: 8.31),
                                    Text('How to plant correctly ',
                                      style: TextStyle(
                                        color: Colors.greenAccent,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700
                                      )
                                    )
                                  ]),
                                  const SizedBox(height: 25.97),
                                  Row(
                                      children:[
                                        const SizedBox(width: 13.06),
                                        Flexible(
                                          child: Text('It is a long established'
                                              ' fact '
                                              'that a reader will be distracted',
                                              overflow: TextOverflow.ellipsis ,
                                              maxLines: 3,
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400
                                              )
                                          ),
                                        )
                                      ]
                                  ),
                                  const SizedBox(height: 23) ,
                                ],
                              ),
                            ),
                            Image(
                                image: NetworkImage(
                                    'https://www.nme.com/wp-content/uploads/2022/02/rihanna-2000x1270-1.jpg')
                            ),
                            const SizedBox(height: 16),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Image.asset('assets/likes_button.png',
                                      width: 17.18,
                                      height: 16.01
                                  ),
                                  SizedBox(width:2),
                                  Text('0 Likes',
                                      style : TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13
                                      )),
                                  SizedBox(width:44.01),
                                  Text('2 Replies',
                                      style : TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 13
                                      )),
                                ]
                            )
                          ]
                        ),
                      );
                    },
                  ),
                ),
              )
            ]
          ),
        )
    );
  }
}