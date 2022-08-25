import 'package:flutter/material.dart';


import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../controllers/network/dio_creator.dart';
import '../../controllers/singletons/DioSingleton.dart';
import '../../controllers/validators/text_form_fields_validators.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  DioCreator? _dioInstance ;
  late TextEditingController? _email;
  late TextEditingController? _password;

  GlobalKey<FormState> _signInKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _email = TextEditingController();
    _password = TextEditingController();
    _dioInstance = DioSingleton.getSingleInstance();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: LayoutBuilder(
        builder: (ctx,constraints){
          if(constraints.widthConstraints().biggest
              .width >= 1366) {
            return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 82),
              Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    heightFactor: 2,
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Image.asset('assets/web/background_right.jpg',
                        alignment: AlignmentDirectional.bottomEnd,
                        width:238,
                        height:363.11
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Image.asset('assets/web/left_background.png',
                        alignment: Alignment.topLeft,
                        width:238,
                        height:263.11
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 319.0),
                    child: Form(
                      key: _signInKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Email',
                              style: TextStyle(
                                  color: Color(0xff6f6f6f),
                                  fontSize: 14
                              )),
                          const SizedBox(height: 3.8),
                          TextFormField(
                            controller: _email,
                            autofocus: false,
                            validator: (val){
                              return validateEmail(value: val);
                            },
                            style: const TextStyle(
                                fontSize: 15.0, color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Type your e-mail',
                              contentPadding:
                              const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 0.0),
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
                          const SizedBox(height: 30.96),
                          const Text('Password',
                              style: TextStyle(
                                  color: Color(0xff6f6f6f),
                                  fontSize: 14
                              )),
                          const SizedBox(height: 3.8),
                          TextFormField(
                            controller: _password,
                            autofocus: false,
                            style: const TextStyle(
                                fontSize: 15.0, color: Color(0xFFbdc6cf)
                            ),
                            validator: (val){
                              validateSignInPass(val);
                            },
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Type your password',
                              contentPadding:
                              const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 0.0),
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
                          const SizedBox(height: 26),
                          Row(
                              children :[
                                Checkbox(
                                    value: true,
                                    onChanged: (value){},
                                  checkColor: Colors.white,
                                  activeColor: Colors.greenAccent,
                                ),
                                const Text('Remember me'),
                                const Spacer(),
                                GestureDetector(
                                  onTap: (){},
                                  child: const Text('Forgot Password?',
                                  style : TextStyle(
                                    color : Colors.greenAccent,
                                    decoration: TextDecoration.underline,
                                  )),
                                ),
                              ]
                          ),
                          const SizedBox(height: 40),
                          MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0))
                            ),
                            textColor: Colors.white,
                            elevation: 0,
                            color: const Color(0xFF1ABC00),
                            onPressed: () async {
                                await _dioInstance!.setEmailSignInData(
                                  email: _email!.text,
                                  password: _password!.text,
                                  context: context
                                );
                            },
                            child: const SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15.0,
                                      bottom: 15.24),
                                  child: Text('Login',
                                      style: TextStyle(
                                          fontSize: 16
                                      )),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 23),
                          Row(
                            mainAxisAlignment:  MainAxisAlignment.center ,
                              children :[
                                const Text('Don\'t have an account?'),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: (){},
                                  child: const Text('Sign Up',
                                      style :TextStyle(
                                        color : Colors.greenAccent,
                                      )),
                                ),
                              ]
                          ),
                          const SizedBox(height: 33.1),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const SizedBox(
                                width: double.infinity,
                                height: 8,
                                child: Divider(
                                  thickness: 1,
                                  // thickness of the line.
                                  indent: 0,
                                  // empty space to the leading edge of divider.
                                  endIndent: 0,
                                  // empty space to the trailing edge of the divider.
                                  color: Color(0xFF9269BA),
                                  height: 20, // The divider's height extent.
                                ),
                              ),
                              Container(
                                  color: Colors.white,
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Text('or continue with',
                                        style: TextStyle(
                                            color: Colors.greenAccent
                                        )),
                                  )
                              )
                            ],
                          ),
                          const SizedBox(height: 22.15),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                MaterialButton(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                        horizontal: 22
                                    ),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: const BorderSide(color: Colors.grey)
                                    ),
                                  onPressed: () async {
                                     await  _dioInstance!.
                                     GoogleDataLogin(email:_email!.text
                                         ,password:_password!.text,
                                         context: context);
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                          'assets/google_login_icon.png',
                                          width: 32.03, height: 33.04
                                      ),
                                      const SizedBox(width: 13.49),
                                      const Text('Continue with Google',
                                          style :TextStyle(
                                            color : Colors.grey,
                                          ))
                                    ],
                                  )
                                ),
                                const Spacer(),
                                MaterialButton(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15,
                                        horizontal: 22),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        side: const BorderSide(color: Colors.grey)
                                    ),
                                    onPressed: () async {
                                      await  _dioInstance!.
                                      FacebookDataLogin(email:_email!.text
                                          ,password:_password!.text,
                                          context: context);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                            'assets/facebook_login_icon.png',
                                            width: 32.03, height: 31.04,
                                          scale: 0.6,
                                        ),
                                        const SizedBox(width: 13.49),
                                        const Text('Continue with Facebook',
                                            style :TextStyle(
                                              color : Colors.grey,
                                            ))
                                      ],
                                    )
                                ),
                              ]
                          ),
                          const SizedBox(height: 13.1)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
          }
          return SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height:53.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:45.0),
                  child: Form(
                    autovalidateMode: AutovalidateMode.always,
                    key: _signInKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Email',
                            style:TextStyle(
                                color: Color(0xff6f6f6f),
                                fontSize: 14
                            )),
                        const SizedBox(height:3.8),
                        TextFormField(
                          controller: _email,
                          autofocus: false,
                          validator: (val){
                            print(val);
                            return validateEmail(value: val);
                          },
                          style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Type your e-mail',
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
                        const SizedBox(height:30.96),
                        const Text('Password',
                            style:TextStyle(
                                color: Color(0xff6f6f6f),
                                fontSize: 14
                            )),
                        const SizedBox(height:3.8),
                        TextFormField(
                          controller: _password,
                          validator: (val){
                            print(val);
                            return validateEmail(value: val);
                          },
                          style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Type your password',
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
                        const SizedBox(height:36.37),
                        MaterialButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0))
                          ),
                          textColor:Colors.white,
                          elevation: 0,
                          color: const Color(0xFF1ABC00),
                          onPressed: () async {
                           await _dioInstance!.
                            setEmailSignInData(email:_email!.text,
                                password: _password!.text, context: context);
                          },
                          child: const SizedBox(
                            width: double.infinity,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(top:15.0,
                                    bottom:15.24),
                                child: Text('Login',
                                    style:TextStyle(
                                        fontSize: 16
                                    )),
                              ),
                            ),
                          ),),
                        const SizedBox(height:33.1),
                        Stack(
                          alignment: Alignment.center,
                          children:  [
                            const SizedBox(
                              width:double.infinity,
                              height:8,
                              child: Divider(
                                thickness: 1, // thickness of the line.
                                indent: 0, // empty space to the leading edge of divider.
                                endIndent: 0, // empty space to the trailing edge of the divider.
                                color: Color(0xFF979797),
                                height: 20, // The divider's height extent.
                              ),
                            ),
                            Container(
                                color : Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(horizontal:5.0),
                                  child: Text('or continue with',
                                      style:TextStyle(
                                          color: Color(0xFF979797)
                                      )),
                                )
                            )
                          ],
                        ),
                        const SizedBox(height:22.15),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              InkWell(
                                  onTap: () async {
                                    await  _dioInstance!.
                                    GoogleDataLogin(email:_email!.text
                                        ,password:_password!.text,
                                        context: context);
                                  },
                                  child: Image.asset('assets/google_login_icon.png',
                                      width:32.03,height:33.04)
                              ),
                              const SizedBox(width:31.55),
                              InkWell(
                                  onTap: () async {
                                    await  _dioInstance!.
                                    FacebookDataLogin(email:_email!.text
                                        ,password:_password!.text,
                                        context: context);
                                  },
                                  child: Image.asset('assets/facebook_login_icon.png',
                                  width:15.79,height:25.95)
                              )
                            ]),
                        const SizedBox(height:13.1)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      )
    );
  }
}