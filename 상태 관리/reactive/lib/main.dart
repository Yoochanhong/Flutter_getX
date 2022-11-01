import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reactive/controller.dart';

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
        title: Text('reactive'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<Controller>(
              builder: (context) {
                return Text('clicks by GetX: ${context.count2.value}');
              },
            ),
            Obx(
              () => Text('clicks by Obx: ${controller.count2.value}'),
            ),
            ElevatedButton(
              onPressed: () {
                controller.increment2();
              },
              child: Text('increment2'),
            ),
          ],
        ),
      ),
    );
  }
}
