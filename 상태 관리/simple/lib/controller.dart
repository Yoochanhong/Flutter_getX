import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count1 = 0;

  void increment1(){
    count1++;
    update();
  }
}