import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controllers/MovieController.dart';
import '../controllers/my_home_page_controller.dart';
import 'about_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  final movieController controller = Get.put(movieController());

  MyHomePage({ this.title = 'Movie Info'});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          // const DrawerHeader(
          //   decoration: BoxDecoration(
          //     color: Colors.blue,
          //   ),
          //   child: Text('Drawer Header'),
          // ),
          ListTile(
            title: const Text('main'),
            onTap: () {
              Get.to(MyHomePage(
                // title: title,
              ));
            },
          ),
          ListTile(
            title: const Text('about'),
            onTap: () {
              Get.to(AboutPage());
            },
          ),
        ],
      )),
      body: Column(children: [
        Container(
          color: Colors.blue,
          height: 50,
        ),
        Expanded(
          child: Obx(
            () => ListView.builder(
              // itemCount: controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?.length,
              itemCount: controller.dailyList.length,
              itemBuilder: (BuildContext context, int index) {
                return Material(
                    elevation: 10,
                    child: Container(
                        child: ListTile(
                          dense: true,
                      leading: Text(
                        '${controller.dailyList[index].rank}',
                        textAlign: TextAlign.center,
                      ),
                      title: Text(
                          '${controller.dailyList[index].movieNm}',
                          style: Get.textTheme.headline6?.copyWith(color:Colors.blue, fontStyle: FontStyle.italic),
                      ),
                      subtitle: Text(
                          '${controller.dailyList[index].movieCd}'),
                    )));
              },
            ),
          ),
        )
      ]),
    );
  }
}
