import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/controllers/MovieController.dart';
import '../controllers/my_home_page_controller.dart';
import 'about_page.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  final movieController controller = Get.put(movieController());

  MyHomePage({required this.title});
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
                Get.to(MyHomePage(title: 'main',));
              },
            ),
            ListTile(
              title: const Text('about'),
              onTap: () {
                Get.to(AboutPage());
              },
            ),
          ],
        )
      ),

      body:

      ListView.builder(
        itemCount: controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?.length,
        itemBuilder: (BuildContext context, int index) {
          return Material(
           elevation: 10,
           child: Container(
             child: ListTile(
               title: Text('${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[index].movieNm}'),
               subtitle: Text('${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[index].movieCd}'),
               leading: Text('${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[index].rank}'),
             )
           )
          );
            // Text('${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[index].movieNm}');
        },
      )

    );
  }
}
