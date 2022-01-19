import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/my_home_page_controller.dart';
import 'about_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  final MyHomePageController controller = Get.put(MyHomePageController());

  MyHomePage({required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            // Text(
            //   'You have pushed the button this many times:',
            // ),
            Obx(() => Text(
              // '0',
              '${controller.count.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ),
          ],
        ),

    );
  }
}
