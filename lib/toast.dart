import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyToast {
  show(String msg, String con) {
    return Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: con == 'normal'
            ? Colors.grey[400]
            : con == 'success' ? Colors.green : Colors.red[300],
        textColor: Colors.white,
        fontSize: 16.0);
  }
}