import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count2 = 0.obs;

  //var count2 = Rx<int>(0);
  //var count2 = RxInt(0);

  void increment2() {
    count2.value++;
  }

  @override
  void onInit() {
    super.onInit();

    once(count2, (context) {
      print('$context이 처음으로 변경되었습니다.');
    });
    ever(count2, (context) {
      print('$context이 변경되었습니다.');
    });
    debounce(
      count2,
          (context) {
        print('$context가 마지막으로 변경된 이후, 1초간 변경이 없습니다.');
      },
      time: Duration(seconds: 1),
    );
    interval(
      count2,
          (context) {
        print('$context가 변경되는 중입니다.(1초마다 호출)');
      },
      time: Duration(seconds: 1),
    );
  }
}