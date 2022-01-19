import 'package:http/http.dart' as http;

class RemoteServices{

  Future<http.Response> fetchPost() {
    String url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=17e8360ada85bfaaf59a0329865ee532&targetDt=";
    String date = "20210101";
    return http.get(Uri.parse(url+date));
  }
}