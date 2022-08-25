

import '../network/dio_creator.dart';


// Creates single instance of DioCreator among the application.
class DioSingleton{

  static DioCreator? _dioInstance;

  DioSingleton._();

  static DioCreator getSingleInstance(){
    return _dioInstance ??= DioCreator();
  }
}