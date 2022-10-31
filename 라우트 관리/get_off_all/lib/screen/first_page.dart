import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_off_all/screen/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 페이지'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(SecondPage());
          },
          child: Text(
            '첫번째 페이지',
          ),
        ),
      ),
    );
  }
}
