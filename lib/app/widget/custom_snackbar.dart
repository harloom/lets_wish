


import 'package:flutter/material.dart';

class CustomSnackbar{
  static  Widget successSnackbar(String text) {
    return SnackBar(content: Text(text),backgroundColor: Colors.blue,);
  }
}