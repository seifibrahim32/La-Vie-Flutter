import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/registration_models/facebook_model.dart';
import '../../models/registration_models/google_model.dart';
import '../../models/registration_models/signin_model.dart';
import '../../models/registration_models/signup_model.dart';

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

  SharedPreferences? accessToken ;

  Future getSignUpData({required String firstName, required String lastName,
    required String email,
    required String password}) async {

    try{
      accessToken =  await SharedPreferences.getInstance();
      _res = await
      _dio.post('auth/signup',data: SignUpModel(
          firstName: firstName,
          lastName:
          lastName,email: email,password: password)
          .toJson()
      );
    } on DioError catch(e){
      print(e.response);
    }
    await accessToken?.setString('accessToken', _res!.data["data"]["accessToken"]);
    print(_res!.data["data"]["accessToken"]);

  }

  Future setEmailSignInData({required String email, required String password,
    required BuildContext context})
     async {
       accessToken =  await SharedPreferences.getInstance();

       _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
      'Authorization': 'Bearer ${accessToken?.getString('accessToken')}'
    };

       try{
         _res = await _dio.post('auth/signin',data:
         SignInModel(email: email,password: password)
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
    accessToken =  await SharedPreferences.getInstance();

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
    };

    try{
      _res = await _dio.post('auth/signin',data:
     GoogleModel(id: '11',firstName: 'Seif',lastName: 'Ashraf',
     email: 'seifibrahim32@gmail.com',picture: 'https://scontent.'
             'fcai20-2.fna.fbcdn.net/v/t39.30808-6/251077718_1511540'
             '229189372_4515220514536525707_n.jpg?_nc_cat=104&ccb=1-7&_n'
             'c_sid=09cbfe&_nc_eui2=AeHloSMz1Rxxzj6SoT7vCTxoBP6y2jUFWUEE_r'
             'LaNQVZQXw7nAdAPQLRu3qybmiZAgnhJ75ilkAzTT9gY1JA24kG&_nc_ohc=wc-n'
             'KbyQGIwAX_jjca4&_nc_ht=scontent.fcai20-2.fna&oh=00_AT91Kdz0O6LU'
             '1W07uIy-U6cyFD9pcX5Ebt2ie2cb3yD80w&oe=630C4976')
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

  Future getBlogs( )
  async {

    _dio.options.headers = {
      'Accept': '*/*',
      'Content-Type' :'application/json',
    };

    try{
      _res = await _dio.post('products/blogs',data:

      );

    } on DioError catch(e){
      if(e.response!.statusCode == 400){
      }
    }
  }
}