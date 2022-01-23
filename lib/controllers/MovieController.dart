import 'package:get/get.dart';
import 'package:untitled/models/movie.dart';
import 'package:untitled/services/response.dart';

class movieController extends GetxController {
  // var movieList = Movie().obs.value.boxOfficeResult?.dailyBoxOfficeList;
  var movieList = Movie().obs;
  var dailyList = <DailyBoxOfficeList>[].obs;
  // var dailyList = Movie().boxOfficeResult?.dailyBoxOfficeList?.toList();
  @override
  void onInit() {
    fetchMovie2("20210101");
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
  @override
  // TODO: implement onDelete
  InternalFinalCallback<void> get onDelete => super.onDelete;
  void fetchMovie() async {
    var movies = await RemoteServices.fetchMovie();
    if (movies != null){
      // movieList.value = movies;
      print("Movies: ${movies.boxOfficeResult!.boxofficeType}");
      // print("${dailyList?.value?.first.movieNm}");
      //movies.boxOfficeResult!.dailyBoxOfficeList
      // dailyList.value = movies.boxOfficeResult?.dailyBoxOfficeList;
    }
  }
  void fetchMovie2(String date) async {
    var movies = await RemoteServices.fetchMovie2(date);
    if (movies != null){
      movieList.value = movies;
      print("Movies: ${movies.boxOfficeResult!.boxofficeType}");
      print("Movies: ${movies.boxOfficeResult!.dailyBoxOfficeList?.first.movieNm}");
      print("Movies: $movieList");
      // print("${dailyList?.length}");




      //movies.boxOfficeResult!.dailyBoxOfficeList
      // dailyList.value = movies.boxOfficeResult?.dailyBoxOfficeList;
    }
  }


}
