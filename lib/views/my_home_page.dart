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

      body: ListView.builder(
        itemCount: controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?.length,
        itemBuilder: (BuildContext context, int index) {
          return Text('${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[index].movieNm}');
        },
      )

      // body:Column(
      //   children:[
      //     Column(
      //       children: [
      //         // Text($(controller.movieList.value.boxOfficeResult.dailyBoxOfficeList[0].movieNm));
      //     Text(
      //             // '0',
      //             // '${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?.length.toString()}',
      //             '${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[0].movieNm}',
      //
      //             style: Theme.of(context).textTheme.headline6,
      //           ),
      //       ]
      //     )
      //   ]
      // )
      // body: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       // Text(
      //       //   'You have pushed the button this many times:',
      //       // ),
      //       Obx(() => Text(
      //         // '0',
      //         // '${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?.length.toString()}',
      //         '${controller.movieList.value.boxOfficeResult?.dailyBoxOfficeList?[0].movieNm}',
      //
      //         style: Theme.of(context).textTheme.headline6,
      //       ),
      //       ),
      //     ],
      //   ),

    );
  }
}
