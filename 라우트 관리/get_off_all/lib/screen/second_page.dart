import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_off_all/screen/third_page.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 페이지'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.offAll(ThirdPage());
          },
          child: Text(
            '두번째 페이지',
          ),
        ),
      ),
    );
  }
}
