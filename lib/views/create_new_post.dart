import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
class CreateNewPost extends StatefulWidget{

  const CreateNewPost({super.key});

  @override
  State<CreateNewPost> createState() => _CreateNewPostState();
}

class _CreateNewPostState extends State<CreateNewPost> {
  @override
  Widget build(BuildContext context) {

    FlutterNativeSplash.remove();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar : AppBar(
        elevation : 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back,
        color: Colors.black),
        centerTitle: true,
        title: const Text('Create New Post',
        style: TextStyle(
          color: Colors.black,
          fontWeight : FontWeight.w700,
          fontSize: 21
        ))
      ),
        body: Center(
          child: Container(
          color: Colors.white,
            child: SingleChildScrollView(
              physics:  const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.only(left:29.0,right:26.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                      const SizedBox(height:61),
                      // Add Photo
                      Container(
                        width:136,
                        height:136,
                        decoration : BoxDecoration(
                          border: Border.all(
                            color: Colors.greenAccent,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: GestureDetector(
                          onTap: (){},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children : const [
                              Icon(Icons.add,
                                color: Colors.greenAccent,
                              ),
                              SizedBox(height:9),
                              Text('Add Photo',
                              style :TextStyle(
                                color: Colors.greenAccent,
                                  fontSize: 16,
                                fontWeight: FontWeight.w400
                              ))
                            ]
                          )
                        )
                      ),
                      const SizedBox(height:13),
                      // Form Post
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Container(
                            width: 41.21,
                            height: 43.34,
                            alignment: Alignment.centerLeft,
                            child: const Text('Title',
                                style:TextStyle(
                                    color: Color(0xff6f6f6f),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                )),
                          ),
                          TextField(
                            autofocus: false,
                            style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Create your own title',
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
                          const SizedBox(height:13),
                          const Text('Description',
                              style:TextStyle(
                                  color: Color(0xff6f6f6f),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                              )
                          ),
                          const SizedBox(height: 12),
                          TextField(
                            maxLines: 10,
                            autofocus: false,
                            style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Describe your own words ...',
                              contentPadding:
                              const EdgeInsets.only(left: 14.0, bottom: 12.0, top: 10.0),
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
                        ]
                      ),
                      const SizedBox(height:33),

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
                              child: Text('Post',
                                  style:TextStyle(
                                      fontSize: 16
                                  )),
                            ),
                          ),
                        ),),
                    ]
                ),
              ),
            )
          ),
        )
    );
  }
}