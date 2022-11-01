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
        title: Text('show snackbar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.showSnackbar(
              GetBar(
                title: 'snackbar',
                message: 'Snackbar',
                duration: Duration(seconds: 2),
                snackPosition: SnackPosition.TOP,
              ),
            );
          },
          child: Text('Get.showSnackbar'),
        ),
      ),
    );
  }
}
