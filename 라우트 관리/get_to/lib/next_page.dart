import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('두번째 페이지'),
      ),
      body: Center(
        child: Text(
          'Get to 성공',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
