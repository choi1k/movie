import 'package:http/http.dart' as http;
import 'package:untitled/models/movie.dart';

class RemoteServices{

  static var client = http.Client();

  static Future<Movie> fetchMovie() async {
    String url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=17e8360ada85bfaaf59a0329865ee532&targetDt=";
    String date = "20210101";
    var response = await client.get(Uri.parse(url+date));
    var jsonString = response.body;
    return movieFromJson(jsonString);
  }

  static Future<Movie> fetchMovie2(String date) async {
    String url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=17e8360ada85bfaaf59a0329865ee532&targetDt=";
    // String date = "20210101";
    var response = await client.get(Uri.parse(url+date));
    var jsonString = response.body;
    return movieFromJson(jsonString);
  }
}