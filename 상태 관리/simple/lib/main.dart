import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple/controller.dart';

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
    final controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('simple'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              builder: (context) {
                return Text(
                  'clicks : ${context.count1}',
                  style: TextStyle(fontSize: 30),
                );
              },
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment1();
              },
              child: Text('increment1'),
            ),
          ],
        ),
      ),
    );
  }
}
