import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {

  TabController? _tabController;

  late TextEditingController? _email;
  late TextEditingController? _password;
  late TextEditingController? _confirmPassword;
  late TextEditingController? _firstname;
  late TextEditingController? _lastname;
  @override
  void initState() {
    super.initState();
    FlutterNativeSplash.remove();
    _tabController = TabController(length: 2, vsync: this);
    _email = TextEditingController();
    _lastname = TextEditingController();
    _firstname = TextEditingController();
    _password = TextEditingController();
    _confirmPassword = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length:2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/background_login.png'),
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                      height:90
                  ),
                  Image.asset('assets/splashscreen_160.png',
                    width: 102,height: 90,),
                  Container(
                    margin: const EdgeInsets.only(left:60.0,right:60),
                    child: TabBar(
                      unselectedLabelColor: const Color(0xFF8A8A8A),
                      labelColor: const Color(0xff1abc00),
                      indicator: const UnderlineTabIndicator(
                        borderSide:
                        BorderSide(color: Colors.greenAccent, width: 2.0,),
                      ),
                      indicatorPadding:
                      const EdgeInsets.symmetric(horizontal: 40.0),
                      tabs: const [
                        Tab(
                          child:Text('Sign up',
                          style: TextStyle(fontSize: 18),)
                        ),
                        Tab(
                            child:Text('Login',
                              style: TextStyle(fontSize: 18),)
                        )
                      ],
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: _tabController,
                      children: [
                        SingleChildScrollView(
                          primary: true,
                          child: Column(
                            children: [
                              const SizedBox(height:53.5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:45.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('First Name',
                                        style:TextStyle(
                                            color: Color(0xff6f6f6f),
                                            fontSize: 14
                                        )),
                                    const SizedBox(height:3.8),
                                    TextField(
                                      controller: _firstname,
                                      autofocus: false,
                                      style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Type your first name',
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
                                    const SizedBox(height:25.96),
                                    const Text('Last Name',
                                        style:TextStyle(
                                            color: Color(0xff6f6f6f),
                                            fontSize: 14
                                        )),
                                    const SizedBox(height:3.8),
                                    TextField(
                                      controller: _lastname,
                                      autofocus: false,
                                      style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Type your last name',
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
                                    const SizedBox(height:26.37),
                                    const Text('Password',
                                        style:TextStyle(
                                            color: Color(0xff6f6f6f),
                                            fontSize: 14
                                        )),
                                    const SizedBox(height:3.8),
                                    TextField(
                                      controller: _password,
                                      autofocus: false,
                                      style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Type your password...',
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
                                    const SizedBox(height:26.37),
                                    const Text('Confirm Password',
                                        style:TextStyle(
                                            color: Color(0xff6f6f6f),
                                            fontSize: 14
                                        )),
                                    const SizedBox(height:3.8),
                                    TextField(
                                      controller: _confirmPassword,
                                      autofocus: false,
                                      style: const TextStyle(fontSize: 15.0, color: Color(0xFFbdc6cf)),
                                      decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        hintText: 'Confirm your password...',
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
                                    const SizedBox(height:26.37),
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
                                            thickness: 1,
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
                                              child: Image.asset('assets/google_login_icon.png',
                                              width:32.03,height:33.04)
                                          ),
                                          const SizedBox(width:31.55),
                                          InkWell(
                                              child: Image.asset('assets/facebook_login_icon.png',
                                              width:15.79,height:25.95)
                                          )
                                        ]),
                                    const SizedBox(height:22.15),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(height:53.5),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal:45.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text('Email',
                                    style:TextStyle(
                                        color: Color(0xff6f6f6f),
                                          fontSize: 14
                                    )),
                                    const SizedBox(height:3.8),
                                    TextField(
                                      controller: _email,
                                      autofocus: false,
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
                                    TextField(
                                      controller: _password,
                                      autofocus: false,
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
                                      onPressed: () {

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
                                          child: Image.asset('assets/google_login_icon.png',
                                      width:32.03,height:33.04)),
                                      const SizedBox(width:31.55),
                                      InkWell(child: Image.asset('assets/facebook_login_icon.png',
                                          width:15.79,height:25.95))
                                    ]),
                                    const SizedBox(height:13.1)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
            ),

          ],
        ),
      ),
    );
  }

}
