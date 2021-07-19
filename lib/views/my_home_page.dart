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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Obx(() => Text(
              // '0',
              '${controller.count.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
            ),
            FlatButton(
                onPressed:(){
                  // Get.to(AboutPage());          // navigate
                  Get.off(AboutPage());      //이전 페이지로 못 돌아감 replace
                },
                child: Text('About GetX')
            ),
            FlatButton(
              onPressed:(){
                Get.snackbar('GetX Snackbar', 'Yay! Awesome GetX Snackbar'
                , snackPosition: SnackPosition.BOTTOM, backgroundColor: Colors.amberAccent
                );
              },
              child: Text('Show Snackbar')
            )

          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
