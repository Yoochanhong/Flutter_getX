import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('세번째 페이지'),
      ),
      body: Center(
        child: Text('세번째 페이지'),
      ),
    );
  }
}
