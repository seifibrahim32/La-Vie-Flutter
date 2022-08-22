

import 'package:flutter/material.dart';

class TextEditingControllerSingleton{

  static TextEditingController? _textEditingController;

  TextEditingControllerSingleton._();

  static TextEditingController getSingleInstance(){
    return _textEditingController ??= TextEditingController();
  }
}