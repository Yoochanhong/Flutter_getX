import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_to_named/next_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Get to Named Example',
      home: HomePage(),
      getPages: [
        GetPage(
          name: '/next',
          page: () => NextPage(),
        ),
      ],
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(NextPage());
          },
          child: Text(
            'Get.toNamed',
          ),
        ),
      ),
    );
  }
}
