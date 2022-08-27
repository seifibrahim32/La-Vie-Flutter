import 'package:flutter/material.dart';


import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../../controllers/network/dio_creator.dart';
import '../../controllers/singletons/DioSingleton.dart';
import '../../controllers/validators/text_form_fields_validators.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late TextEditingController? _email;
  late TextEditingController? _password;
  late TextEditingController? _confirmPassword;
  late TextEditingController? _firstname;
  late TextEditingController? _lastname;
  GlobalKey<FormState> _signUpKey = GlobalKey<FormState>();
  late DioCreator _dioInstance ;

  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _dioInstance = DioSingleton.getSingleInstance();

    _email = TextEditingController();
    _lastname = TextEditingController();
    _firstname = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if (constraints
              .widthConstraints()
              .biggest
              .width >= 1366) {
            return SingleChildScrollView(
              primary: true,
              child: Stack(
                children: [
                  Align(
                    heightFactor: 2,
                    alignment: AlignmentDirectional.bottomEnd,
                    child: Image.asset('assets/web/background_right.jpg',
                        alignment: AlignmentDirectional.bottomEnd,
                        width: 238,
                        height: 363.11
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Image.asset('assets/web/left_background.png',
                        alignment: Alignment.topLeft,
                        width: 238,
                        height: 263.11
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 313.0),
                    child: Form(
                      key: _signUpKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(height: 53.5),
                          // First Name --- Last Name
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        const Text('First Name',
                                            style: TextStyle(
                                                color: Color(0xff6f6f6f),
                                                fontSize: 14
                                            )
                                        ),
                                        const SizedBox(height: 3.8),
                                        TextField(
                                          controller: _firstname,
                                          autofocus: false,
                                          style: const TextStyle(fontSize: 15.0,
                                              color: Color(0xFFbdc6cf)),
                                          decoration: InputDecoration(
                                            errorMaxLines: 4,
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'Type your first name',
                                            contentPadding:
                                            const EdgeInsets.only(left: 14.0,
                                                bottom: 12.0,
                                                top: 0.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Color(
                                                      0xFF939393)),
                                              borderRadius: BorderRadius
                                                  .circular(5.0),
                                            ),
                                            disabledBorder: UnderlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius: BorderRadius
                                                  .circular(25.7),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Color(
                                                      0xFF939393)),
                                              borderRadius: BorderRadius
                                                  .circular(5.0),
                                            ),
                                          ),
                                        ),
                                      ]
                                  ),
                                ),
                                const SizedBox(width: 17),
                                Expanded(
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [
                                        const Text('Last Name',
                                            style: TextStyle(
                                                color: Color(0xff6f6f6f),
                                                fontSize: 14
                                            )
                                        ),
                                        const SizedBox(height: 3.8),
                                        TextField(
                                          controller: _lastname,
                                          autofocus: false,
                                          style: const TextStyle(fontSize: 15.0,
                                              color: Color(0xFFbdc6cf)),
                                          decoration: InputDecoration(
                                            errorMaxLines: 4,
                                            filled: true,
                                            fillColor: Colors.white,
                                            hintText: 'Type your last name',
                                            contentPadding:
                                            const EdgeInsets.only(left: 14.0,
                                                bottom: 12.0,
                                                top: 0.0),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Color(
                                                      0xFF939393)),
                                              borderRadius: BorderRadius
                                                  .circular(5.0),
                                            ),
                                            disabledBorder: UnderlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Colors.white),
                                              borderRadius: BorderRadius
                                                  .circular(25.7),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                  color: Color(
                                                      0xFF939393)),
                                              borderRadius: BorderRadius
                                                  .circular(5.0),
                                            ),
                                          ),
                                        ),
                                      ]
                                  ),
                                )
                              ]
                          ),
                          const SizedBox(height: 25.96),
                          // Email
                          const Text('E-mail',
                              style: TextStyle(
                                  color: Color(0xff6f6f6f),
                                  fontSize: 14
                              )),
                          const SizedBox(height: 3.8),
                          TextField(
                            controller: _email,
                            autofocus: false,
                            style: const TextStyle(fontSize: 15.0,
                                color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Type your email',
                              contentPadding:
                              const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 0.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(
                                    0xFF939393)),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(
                                    0xFF939393)),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 26.37),
                          // Password
                          const Text('Password',
                              style: TextStyle(
                                  color: Color(0xff6f6f6f),
                                  fontSize: 14
                              )
                          ),
                          const SizedBox(height: 3.8),
                          TextField(
                            controller: _password,
                            autofocus: false,
                            style: const TextStyle(fontSize: 15.0,
                                color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Type your password...',
                              contentPadding:
                              const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 0.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(
                                    0xFF939393)),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(
                                    0xFF939393)),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 26.37),
                          // Confirm Password
                          const Text('Confirm Password',
                              style: TextStyle(
                                  color: Color(0xff6f6f6f),
                                  fontSize: 14
                              )),
                          const SizedBox(height: 3.8),
                          TextField(
                            controller: _confirmPassword,
                            autofocus: false,
                            style: const TextStyle(fontSize: 15.0,
                                color: Color(0xFFbdc6cf)),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              hintText: 'Confirm your password...',
                              contentPadding:
                              const EdgeInsets.only(
                                  left: 14.0, bottom: 12.0, top: 0.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(
                                    0xFF939393)),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white),
                                borderRadius: BorderRadius.circular(25.7),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Color(
                                    0xFF939393)),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 26.37),
                          MaterialButton(
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.all(Radius.circular(5.0))
                            ),
                            textColor: Colors.white,
                            elevation: 0,
                            color: const Color(0xFF1ABC00),
                            onPressed: () {
                            },
                            child: const SizedBox(
                              width: double.infinity,
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 15.0,
                                      bottom: 15.24),
                                  child: Text('Sign Up',
                                      style: TextStyle(
                                          fontSize: 16
                                      )
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 23),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Already have an account?'),
                                const SizedBox(width: 8),
                                GestureDetector(
                                  onTap: () {},
                                  child: const Text('Sign in',
                                      style: TextStyle(
                                        color: Colors.greenAccent,
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
                                  indent: 31,
                                  // empty space to the leading edge of divider.
                                  endIndent: 31,
                                  // empty space to the trailing edge of the divider.
                                  color: Color(0xFF979797),
                                  height: 20, // The divider's height extent.
                                ),
                              ),
                              Container(
                                  color: Colors.white,
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: Text('or continue with',
                                        style: TextStyle(
                                          color: Colors.greenAccent,
                                        )),
                                  )
                              )
                            ],
                          ),
                          const SizedBox(height: 60.5),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: MaterialButton(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15,
                                          horizontal: 22),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.0),
                                          side: const BorderSide(
                                              color: Colors.greenAccent)
                                      ),
                                      onPressed: () async {
                                          await  _dioInstance.
                                          GoogleDataLogin(email:_email!.text
                                              ,password:_password!.text,
                                              context: context);
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Image.asset(
                                              'assets/google_login_icon.png',
                                              width: 32.03, height: 33.04
                                          ),
                                          const SizedBox(width: 13.49),
                                          const Text('Continue with Google',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.greenAccent,
                                              )),
                                          const Spacer()
                                        ],
                                      )
                                  ),
                                ),
                                const Spacer(),
                                Expanded(
                                  child: MaterialButton(
                                      minWidth: 367.43,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15,
                                          horizontal: 22),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10.0),
                                          side: const BorderSide(
                                            color: Colors.greenAccent,
                                          )
                                      ),
                                      onPressed: () async {
                                        await  _dioInstance!.
                                        FacebookDataLogin(email:_email!.text
                                            ,password:_password!.text,
                                            context: context);
                                      },
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment
                                            .center,
                                        crossAxisAlignment: CrossAxisAlignment
                                            .center,
                                        children: [
                                          Image.asset(
                                            'assets/facebook_login_icon.png',
                                            width: 30.03, height: 31.04,
                                            scale: 0.8,
                                          ),
                                          const SizedBox(width: 11.49),
                                          const Text('Continue with Facebook',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.greenAccent,
                                              ))
                                        ],
                                      )
                                  ),
                                ),
                              ]),
                          const SizedBox(height: 22.15),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          return SingleChildScrollView(
            primary: true,
            child: Column(
              children: [
                const SizedBox(height: 53.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 45.0),
                  child: Form(
                    key: _signUpKey,
                    autovalidateMode: AutovalidateMode.always,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      const Text('First Name',
                                          style: TextStyle(
                                              color: Color(0xff6f6f6f),
                                              fontSize: 14
                                          )
                                      ),
                                      const SizedBox(height: 3.8),
                                      TextField(
                                        controller: _firstname,
                                        autofocus: false,
                                        style: const TextStyle(fontSize: 15.0,
                                            color: Color(0xFFbdc6cf)),
                                        decoration: InputDecoration(
                                          errorMaxLines: 4,
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Type your first name',
                                          contentPadding:
                                          const EdgeInsets.only(left: 14.0,
                                              bottom: 12.0,
                                              top: 0.0
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(
                                                    0xFF939393)),
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                          disabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius: BorderRadius.circular(
                                                25.7),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(
                                                    0xFF939393)),
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              ),
                              const SizedBox(width: 17),
                              Expanded(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      const Text('Last Name',
                                          style: TextStyle(
                                              color: Color(0xff6f6f6f),
                                              fontSize: 14
                                          )
                                      ),
                                      const SizedBox(height: 3.8),
                                      TextField(
                                        controller: _lastname,
                                        autofocus: false,
                                        style: const TextStyle(fontSize: 15.0,
                                            color: Color(0xFFbdc6cf)),
                                        decoration: InputDecoration(
                                          errorMaxLines: 4,
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Type your last name',
                                          contentPadding:
                                          const EdgeInsets.only(left: 14.0,
                                              bottom: 12.0,
                                              top: 0.0),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(
                                                    0xFF939393)),
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                          disabledBorder: UnderlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Colors.white),
                                            borderRadius: BorderRadius.circular(
                                                25.7),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                                color: Color(
                                                    0xFF939393)),
                                            borderRadius: BorderRadius.circular(
                                                5.0),
                                          ),
                                        ),
                                      ),
                                    ]
                                ),
                              )
                            ]
                        ),
                        const SizedBox(height: 25.96),
                        const Text('E-mail',
                            style: TextStyle(
                                color: Color(0xff6f6f6f),
                                fontSize: 14
                            )),
                        const SizedBox(height: 3.8),
                        TextFormField(
                          controller: _email,
                          autofocus: false,
                          style: const TextStyle(fontSize: 15.0,
                              color: Color(
                              0xFFbdc6cf)
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Type your email',
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
                          validator: (value){
                           return  validateEmail(value: value!);
                          },
                        ),
                        const SizedBox(height: 26.37),
                        const Text('Password',
                            style: TextStyle(
                                color: Color(0xff6f6f6f),
                                fontSize: 14
                            )),
                        const SizedBox(height: 3.8),
                        TextFormField(
                          controller: _password,
                          autofocus: false,
                          style: const TextStyle(fontSize: 15.0, color: Color(
                              0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Type your password...',
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
                        const SizedBox(height: 26.37),
                        const Text('Confirm Password',
                            style: TextStyle(
                                color: Color(0xff6f6f6f),
                                fontSize: 14
                            )),
                        const SizedBox(height: 3.8),
                        TextFormField(
                          controller: _confirmPassword,
                          autofocus: false,
                          validator: (val){
                            return  validatePasswords(val,_password!.text);
                            },
                          style: const TextStyle(fontSize: 15.0, color: Color(
                              0xFFbdc6cf)),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Confirm your password...',
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
                        const SizedBox(height: 26.37),
                        MaterialButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                              BorderRadius.all(Radius.circular(5.0))
                          ),
                          textColor: Colors.white,
                          elevation: 0,
                          color: const Color(0xFF1ABC00),
                          onPressed: () {
                            if(_signUpKey.currentState!.validate()) {
                              _dioInstance.getSignUpData(
                                firstName: _firstname!.text,
                                lastName: _lastname!.text,
                                email: _email!.text,
                                password: _password!.text,
                              );
                            }
                          },
                          child: const SizedBox(
                            width: double.infinity,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.only(top: 15.0,
                                    bottom: 15.24),
                                child: Text('Sign Up',
                                    style: TextStyle(
                                        fontSize: 16
                                    )
                                ),
                              ),
                            ),
                          ),
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
                                indent: 0,
                                // empty space to the leading edge of divider.
                                endIndent: 0,
                                // empty space to the trailing edge of the divider.
                                color: Color(0xFF979797),
                                height: 20, // The divider's height extent.
                              ),
                            ),
                            Container(
                                color: Colors.white,
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Text('or continue with',
                                      style: TextStyle(
                                          color: Color(0xFF979797)
                                      )),
                                )
                            )
                          ],
                        ),
                        const SizedBox(height: 22.15),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () async {
                                    await  _dioInstance!.
                                    GoogleDataLogin(email:_email!.text
                                        ,password:_password!.text,
                                        context: context);
                                  },
                                  child: Image.asset(
                                      'assets/google_login_icon.png',
                                      width: 32.03, height: 33.04)
                              ),
                              const SizedBox(width: 31.55),
                              InkWell(
                                  onTap: () async {
                                    await  _dioInstance!.
                                    FacebookDataLogin(email:_email!.text
                                        ,password:_password!.text,
                                        context: context);
                                  },
                                  child: Image.asset(
                                      'assets/facebook_login_icon.png',
                                      width: 15.79, height: 25.95)
                              )
                            ]),
                        const SizedBox(height: 22.15),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

}