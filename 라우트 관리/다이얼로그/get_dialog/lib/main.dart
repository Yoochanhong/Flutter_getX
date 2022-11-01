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
        title: Text('dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.dialog(
              Dialog(
                child: Container(
                  height: 100,
                  child: Center(
                    child: Text('dialog'),
                  ),
                ),
              ),
            );
          },
          child: Text('Get.dialog'),
        ),
      ),
    );
  }
}
