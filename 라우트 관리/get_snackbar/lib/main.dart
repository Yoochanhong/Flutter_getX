import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스낵바'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar('Snackbar', 'SnackbarMessage', snackPosition: SnackPosition.TOP);
          },
          child: Text('스낵바'),
        ),
      ),
    );
  }
}
