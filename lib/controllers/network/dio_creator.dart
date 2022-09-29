import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../models/blogs_model.dart';
import '../../models/forums_model.dart';
import '../../models/registration_models/facebook_model.dart';
import '../../models/registration_models/forgot_password_model.dart';
import '../../models/registration_models/google_model.dart';
import '../../models/registration_models/signin_model.dart';
import '../../models/registration_models/signup_model.dart';
import '../../views/web_views/welcome_web_screen.dart';

class DioCreator {

  Dio _dio = Dio(
      BaseOptions(baseUrl: 'https://lavie.orangedigitalcenteregypt.com/api/v1/',
          headers:{
            'Accept': '*/*',
            'Content-Type' :'application/json',
          }
      )
  );

  Response? _res ;

  SharedPreferences? accessToken;

  Future getSignUpData({required String firstName, required String lastName,
    required String email,
    required String password,
  required BuildContext? context}) async {
    try{
      accessToken =  await SharedPreferences.getInstance();
      _res = await _dio.post('auth/signup',data: SignUpModel(
          firstName: firstName,
          lastName:
          lastName,email: email,password: password)
          .toJson()
      );
      if(_res!.statusCode == 200){
        SnackBar snackBar = SnackBar(
            content:  Text('Successfully Signed Up',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
            backgroundColor: Colors.green
        );
        ScaffoldMessenger.of(context!).showSnackBar(snackBar);

        await accessToken!.setString('accessToken', _res!.data["data"]["accessToken"]);
        print(_res!.data["data"]["accessToken"]);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context){
          return WelcomeWebScreen('');
          }), (route) => false);

      }
    } on DioError catch(e){
      if(e.response!.statusCode == 400){
        print(e.response);
        SnackBar snackBar = SnackBar(
            content:  Text(e.response!.data['message'][0],
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
            backgroundColor: Colors.red
        );
        ScaffoldMessenger.of(context!).showSnackBar(snackBar);
      }

    }
  }

  Future setEmailSignInData({required String email, required String password,
    required BuildContext context})
     async {
       accessToken =  await SharedPreferences.getInstance();

       _dio.options.headers = {
         'Accept': '*/*',
         'Content-Type' :'application/json',
       };

       try{
         _res = await _dio.post('auth/signin',data:
         SignInModel(email: email,password: password)
             .toJson()
         );

         if(_res!.statusCode == 200){
           print(_res!.data);
           SnackBar snackBar = SnackBar(
               content:  Text(_res!.data['message'],
                   style: TextStyle(
                       color: Colors.white,
                       fontWeight: FontWeight.bold
                   )),
               backgroundColor: Colors.green
           );
           accessToken!.setString('accessToken', _res!.data['data']['accessToken']);
           ScaffoldMessenger.of(context).showSnackBar(snackBar);

           Navigator.of(context).pushAndRemoveUntil(
             MaterialPageRoute(builder: (context) {
             return WelcomeWebScreen('');
           }),(route) => false,);

         }
       } on DioError catch(e){
         if(e.response!.statusCode == 400){
           SnackBar snackBar = SnackBar(
               content:  Text(e.response!.data['message'].toString(),
                   style: TextStyle(
                       color: Colors.white,
                     fontWeight: FontWeight.bold
                   )),
               backgroundColor: Colors.red
           );
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
         }
       }
  }

  Future FacebookDataLogin({required String email, required String password,
    required BuildContext context})
  async {
    accessToken =  await SharedPreferences.getInstance();

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
    };

    try{
      _res = await _dio.post('auth/signin',data:
      FacebookModel(email: email,lastName: 'Ashraf',
          firstName: 'Seif',id: '10112000',
          photo: 'https://scontent.fcai20-2.fna.fbcdn.net/'
              'v/t39.30808-6/251077718_1511540229189372_4515220514536525707_n.j'
              'pg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHloSMz1Rxxzj6SoT'
              '7vC'
              'TxoBP6y2jUFWUEE_rLaNQVZQXw7nAdAPQLRu3qybmiZAgnhJ75ilkAzTT9gY1JA2'
              '4kG&'
              '_nc_ohc=wc-nKbyQGIwAX_jjca4&_nc_ht=scontent.fcai20-2.fna&'
              'oh=00_AT91Kdz0O6LU1W07uIy-U6cyFD9pcX5Ebt2ie2cb3yD80w&oe=630C4976')
          .toJson()
      );

      SnackBar snackBar = SnackBar(
          content:  Text(_res!.data['message'].toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
          backgroundColor: Colors.green
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    } on DioError catch(e){
      if(e.response!.statusCode == 400){
        SnackBar snackBar = SnackBar(
            content:  Text(e.response!.data['message'].toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
            backgroundColor: Colors.red
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  Future GoogleDataLogin({required String email, required String password,
    required BuildContext context})
  async {

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
    };


    try{
      final googleSignIn = GoogleSignIn(
          clientId: '777271892775-nn2nc761m0is94a00ksmqngmqfrklagf'
              '.apps.googleusercontent.com');
      final user = await googleSignIn.signIn(
      );
      _res = await _dio.post('auth/google',data:
     GoogleModel(id: user!.id,firstName: user.displayName,lastName: '',
     email: user.email,picture: user.photoUrl)
          .toJson()
      );

      SnackBar snackBar = SnackBar(
          content:  Text(_res!.data['message'].toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
          backgroundColor: Colors.green
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    } on DioError catch(e){
      if(e.response!.statusCode == 400){
        SnackBar snackBar = SnackBar(
            content:  Text(e.response!.data['message'].toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
            backgroundColor: Colors.red
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  Future<Map<String, dynamic>> getBlogs() async {
    accessToken =  await SharedPreferences.getInstance();

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
      'Authorization': 'Bearer ${accessToken!.getString('accessToken')}'
    };
    try{
      _res = await _dio.get('products/blogs');
      print(BlogsModel.fromJson(_res!.data).toJson());
    } on DioError catch(e){
      if(e.response!.statusCode == 400){

      }
    } return BlogsModel.fromJson(_res!.data).toJson();
  }

  Future forgotPassword({required String email ,
    required BuildContext context}) async {

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
    };

    try{
      _res = await _dio.post('auth/forget-password',
          data: ForgotPasswordModel(email: email).toJson()
      );
      print(_res!.data['message']);

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(_res!.data['message']+ "\nCLICK ESC TO EXIT",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.w500
              ),),
          );
        },
      ).then((value) {
        verifyOTP(email , context);
      }
      );

    } on DioError catch(e){
      if(e.response!.statusCode == 400){
        SnackBar snackBar = SnackBar(
            content:  Text(e.response!.data['message'].toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                )),
            backgroundColor: Colors.red
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }

  Future verifyOTP(String email,BuildContext context){

    TextEditingController otp = TextEditingController();

    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Write the sent OTP Code',
                style: TextStyle(
                    fontSize: 15
                ),),
              SizedBox(
                width:90,
                child: TextField(
                  maxLines: 1,
                  controller: otp,
                ),
              ),
              SizedBox(height:10),
              MaterialButton(
                color: Colors.blue,
                minWidth: 145,
                onPressed: () async {
                  try {
                    _res = await _dio.post('auth/verify-otp', data: {
                      'email': email,
                      'otp': otp.text }
                    );

                    if(_res!.statusCode == 200){
                      print('${_res!.data}');
                      Navigator.of(context).pop();
                      resetPassword(
                        email : email,
                        context : context,
                        otp: otp.text
                      );
                    }
                  } on DioError catch (e) {
                    print(e.response!.data['type']);
                    if(e.response!.data['type'] == 'invalidOTP'){
                     showDialog(context: context, builder: (context){
                       return const AlertDialog(
                         title: Text('invalid OTP code'),
                       );
                     });
                    }
                  }
                },
                child: const Text('Verify OTP',
                    style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w700)),
              )
            ],
          ),
        );
      },
    );
  }

  Future resetPassword({
    required String email,required BuildContext context
    ,required String otp}) async {
    return
      showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController verifyPassword =
          TextEditingController();
          return Material(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width:120,
                  child: TextField(
                    maxLines: 1,
                    controller: verifyPassword,
                  ),
                ),
                SizedBox(height:10),
                MaterialButton(
                  color: Colors.blue,
                  minWidth: 245,
                  height:144,
                  child: Text('Reset Password',style:
                  TextStyle(
                      color: Colors.white
                  )),
                  onPressed: () async {
                    try {
                      _res = await _dio.post(
                          'auth/reset-password', data: {
                            'email': email,
                            'otp': otp,
                            'password': verifyPassword.text
                          }
                      );
                      if(_res!.statusCode == 200){
                        showDialog(context: context, builder: (context){
                        return const AlertDialog(
                          backgroundColor: Colors.green,
                          title: Text(
                              'Password changed successfully',
                              style: TextStyle(
                              color:Colors.white)
                          ),
                        );
                        });
                      }
                    } on DioError catch(error){
                      print(error.response!.data);
                      showDialog(context: context, builder: (context){
                        return AlertDialog(
                          backgroundColor: Colors.red,
                          title: Text('Invalid PASSWORD',style: TextStyle(
                              color:Colors.white)),
                        );
                      });
                    }
                  },
                ),
                SizedBox(height:40),
              ],
            ),
          );
        },
      );
  }

  Future getFreeSeeds({
    required String email,required BuildContext context}) async {

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
      'Authorization': 'Bearer ${accessToken?.getString('accessToken')}'
    };
    try{
      _res = await _dio.post('user/me/claimFreeSeeds',data: {
        'address' : email
        }
      );
      SnackBar snackBar = SnackBar(
          content:  Text(_res!.data['message'].toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
          backgroundColor: Colors.green
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      if(_res!.statusCode == 200){
        accessToken!.setBool('doneFreeSeeds' , true);
      }
    } on DioError{

      SnackBar snackBar = SnackBar(
          content:  Text(_res!.data['message'].toString(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              )),
          backgroundColor: Colors.red
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

    }

  }

  Future getAllForums() async {

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
      'Authorization': 'Bearer ${accessToken?.getString('accessToken')}'
    };
    try{
      _res = await _dio.get('forums',queryParameters:
        {
          'search' : ''
        }
      );
      print(_res!.data);
    } on DioError catch(e){
      print(e);
    }
    return GetForumsModel.fromJson(_res!.data).toJson();
  }
}