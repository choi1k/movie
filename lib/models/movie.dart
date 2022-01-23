/// boxOfficeResult : {"boxofficeType":"일별 박스오피스","showRange":"20210101~20210101","dailyBoxOfficeList":[{"rnum":"1","rank":"1","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20192567","movieNm":"원더 우먼 1984","openDt":"2020-12-23","salesAmt":"274407080","salesShare":"51.4","salesInten":"41920830","salesChange":"18","salesAcc":"3764838540","audiCnt":"29884","audiInten":"2462","audiChange":"9","audiAcc":"420870","scrnCnt":"1877","showCnt":"4329"},{"rnum":"2","rank":"2","rankInten":"1","rankOldAndNew":"OLD","movieCd":"20202703","movieNm":"뱅가드","openDt":"2020-12-30","salesAmt":"44924000","salesShare":"8.4","salesInten":"2922600","salesChange":"7","salesAcc":"124210900","audiCnt":"5190","audiInten":"232","audiChange":"4.7","audiAcc":"15570","scrnCnt":"259","showCnt":"516"},{"rnum":"3","rank":"3","rankInten":"-1","rankOldAndNew":"OLD","movieCd":"20040725","movieNm":"화양연화","openDt":"2000-10-20","salesAmt":"38790050","salesShare":"7.3","salesInten":"-5062310","salesChange":"-11.5","salesAcc":"438770750","audiCnt":"4314","audiInten":"-878","audiChange":"-16.9","audiAcc":"52328","scrnCnt":"434","showCnt":"607"},{"rnum":"4","rank":"4","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20201002","movieNm":"조제","openDt":"2020-12-10","salesAmt":"29130490","salesShare":"5.5","salesInten":"-6914350","salesChange":"-19.2","salesAcc":"1702558060","audiCnt":"3338","audiInten":"-1103","audiChange":"-24.8","audiAcc":"189985","scrnCnt":"472","showCnt":"625"},{"rnum":"5","rank":"5","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20192193","movieNm":"도굴","openDt":"2020-11-04","salesAmt":"25599980","salesShare":"4.8","salesInten":"-4481330","salesChange":"-14.9","salesAcc":"13790280390","audiCnt":"2978","audiInten":"-866","audiChange":"-22.5","audiAcc":"1526492","scrnCnt":"294","showCnt":"353"},{"rnum":"6","rank":"6","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20202647","movieNm":"나이팅게일","openDt":"2020-12-30","salesAmt":"19084320","salesShare":"3.6","salesInten":"-1865050","salesChange":"-8.9","salesAcc":"59429790","audiCnt":"2211","audiInten":"-337","audiChange":"-13.2","audiAcc":"7573","scrnCnt":"307","showCnt":"410"},{"rnum":"7","rank":"7","rankInten":"0","rankOldAndNew":"NEW","movieCd":"20202130","movieNm":"빅풋 주니어2: 패밀리가 떴다","openDt":"2021-01-06","salesAmt":"12584970","salesShare":"2.4","salesInten":"12584970","salesChange":"100","salesAcc":"12584970","audiCnt":"1565","audiInten":"1565","audiChange":"100","audiAcc":"1565","scrnCnt":"236","showCnt":"293"},{"rnum":"8","rank":"8","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20167904","movieNm":"라라랜드","openDt":"2016-12-07","salesAmt":"8234000","salesShare":"1.5","salesInten":"-3207000","salesChange":"-28","salesAcc":"30881366808","audiCnt":"1175","audiInten":"-437","audiChange":"-27.1","audiAcc":"3743214","scrnCnt":"33","showCnt":"49"},{"rnum":"9","rank":"9","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20202128","movieNm":"100% 울프: 푸들이 될 순 없어","openDt":"2020-12-24","salesAmt":"7889510","salesShare":"1.5","salesInten":"-1954090","salesChange":"-19.9","salesAcc":"106850730","audiCnt":"1009","audiInten":"-318","audiChange":"-24","audiAcc":"13366","scrnCnt":"147","showCnt":"164"},{"rnum":"10","rank":"10","rankInten":"2","rankOldAndNew":"OLD","movieCd":"20181983","movieNm":"이웃사촌","openDt":"2020-11-25","salesAmt":"8455600","salesShare":"1.6","salesInten":"-1000","salesChange":"0","salesAcc":"3656353560","audiCnt":"981","audiInten":"-82","audiChange":"-7.7","audiAcc":"425745","scrnCnt":"143","showCnt":"168"}]}
import 'dart:convert';

Movie movieFromJson(String str) => Movie.fromJson(json.decode(str));

String movieToJson(Movie data) => json.encode(data.toJson());
class Movie {
  Movie({
      BoxOfficeResult? boxOfficeResult,}){
    _boxOfficeResult = boxOfficeResult;
}

  Movie.fromJson(dynamic json) {
    _boxOfficeResult = json['boxOfficeResult'] != null ? BoxOfficeResult.fromJson(json['boxOfficeResult']) : null;
  }
  BoxOfficeResult? _boxOfficeResult;

  BoxOfficeResult? get boxOfficeResult => _boxOfficeResult;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_boxOfficeResult != null) {
      map['boxOfficeResult'] = _boxOfficeResult?.toJson();
    }
    return map;
  }

}

/// boxofficeType : "일별 박스오피스"
/// showRange : "20210101~20210101"
/// dailyBoxOfficeList : [{"rnum":"1","rank":"1","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20192567","movieNm":"원더 우먼 1984","openDt":"2020-12-23","salesAmt":"274407080","salesShare":"51.4","salesInten":"41920830","salesChange":"18","salesAcc":"3764838540","audiCnt":"29884","audiInten":"2462","audiChange":"9","audiAcc":"420870","scrnCnt":"1877","showCnt":"4329"},{"rnum":"2","rank":"2","rankInten":"1","rankOldAndNew":"OLD","movieCd":"20202703","movieNm":"뱅가드","openDt":"2020-12-30","salesAmt":"44924000","salesShare":"8.4","salesInten":"2922600","salesChange":"7","salesAcc":"124210900","audiCnt":"5190","audiInten":"232","audiChange":"4.7","audiAcc":"15570","scrnCnt":"259","showCnt":"516"},{"rnum":"3","rank":"3","rankInten":"-1","rankOldAndNew":"OLD","movieCd":"20040725","movieNm":"화양연화","openDt":"2000-10-20","salesAmt":"38790050","salesShare":"7.3","salesInten":"-5062310","salesChange":"-11.5","salesAcc":"438770750","audiCnt":"4314","audiInten":"-878","audiChange":"-16.9","audiAcc":"52328","scrnCnt":"434","showCnt":"607"},{"rnum":"4","rank":"4","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20201002","movieNm":"조제","openDt":"2020-12-10","salesAmt":"29130490","salesShare":"5.5","salesInten":"-6914350","salesChange":"-19.2","salesAcc":"1702558060","audiCnt":"3338","audiInten":"-1103","audiChange":"-24.8","audiAcc":"189985","scrnCnt":"472","showCnt":"625"},{"rnum":"5","rank":"5","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20192193","movieNm":"도굴","openDt":"2020-11-04","salesAmt":"25599980","salesShare":"4.8","salesInten":"-4481330","salesChange":"-14.9","salesAcc":"13790280390","audiCnt":"2978","audiInten":"-866","audiChange":"-22.5","audiAcc":"1526492","scrnCnt":"294","showCnt":"353"},{"rnum":"6","rank":"6","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20202647","movieNm":"나이팅게일","openDt":"2020-12-30","salesAmt":"19084320","salesShare":"3.6","salesInten":"-1865050","salesChange":"-8.9","salesAcc":"59429790","audiCnt":"2211","audiInten":"-337","audiChange":"-13.2","audiAcc":"7573","scrnCnt":"307","showCnt":"410"},{"rnum":"7","rank":"7","rankInten":"0","rankOldAndNew":"NEW","movieCd":"20202130","movieNm":"빅풋 주니어2: 패밀리가 떴다","openDt":"2021-01-06","salesAmt":"12584970","salesShare":"2.4","salesInten":"12584970","salesChange":"100","salesAcc":"12584970","audiCnt":"1565","audiInten":"1565","audiChange":"100","audiAcc":"1565","scrnCnt":"236","showCnt":"293"},{"rnum":"8","rank":"8","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20167904","movieNm":"라라랜드","openDt":"2016-12-07","salesAmt":"8234000","salesShare":"1.5","salesInten":"-3207000","salesChange":"-28","salesAcc":"30881366808","audiCnt":"1175","audiInten":"-437","audiChange":"-27.1","audiAcc":"3743214","scrnCnt":"33","showCnt":"49"},{"rnum":"9","rank":"9","rankInten":"0","rankOldAndNew":"OLD","movieCd":"20202128","movieNm":"100% 울프: 푸들이 될 순 없어","openDt":"2020-12-24","salesAmt":"7889510","salesShare":"1.5","salesInten":"-1954090","salesChange":"-19.9","salesAcc":"106850730","audiCnt":"1009","audiInten":"-318","audiChange":"-24","audiAcc":"13366","scrnCnt":"147","showCnt":"164"},{"rnum":"10","rank":"10","rankInten":"2","rankOldAndNew":"OLD","movieCd":"20181983","movieNm":"이웃사촌","openDt":"2020-11-25","salesAmt":"8455600","salesShare":"1.6","salesInten":"-1000","salesChange":"0","salesAcc":"3656353560","audiCnt":"981","audiInten":"-82","audiChange":"-7.7","audiAcc":"425745","scrnCnt":"143","showCnt":"168"}]

class BoxOfficeResult {
  BoxOfficeResult({
      String? boxofficeType, 
      String? showRange, 
      List<DailyBoxOfficeList>? dailyBoxOfficeList,}){
    _boxofficeType = boxofficeType;
    _showRange = showRange;
    _dailyBoxOfficeList = dailyBoxOfficeList;
}

  BoxOfficeResult.fromJson(dynamic json) {
    _boxofficeType = json['boxofficeType'];
    _showRange = json['showRange'];
    if (json['dailyBoxOfficeList'] != null) {
      _dailyBoxOfficeList = [];
      json['dailyBoxOfficeList'].forEach((v) {
        _dailyBoxOfficeList?.add(DailyBoxOfficeList.fromJson(v));
      });
    }
  }
  String? _boxofficeType;
  String? _showRange;
  List<DailyBoxOfficeList>? _dailyBoxOfficeList;

  String? get boxofficeType => _boxofficeType;
  String? get showRange => _showRange;
  List<DailyBoxOfficeList>? get dailyBoxOfficeList => _dailyBoxOfficeList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['boxofficeType'] = _boxofficeType;
    map['showRange'] = _showRange;
    if (_dailyBoxOfficeList != null) {
      map['dailyBoxOfficeList'] = _dailyBoxOfficeList?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// rnum : "1"
/// rank : "1"
/// rankInten : "0"
/// rankOldAndNew : "OLD"
/// movieCd : "20192567"
/// movieNm : "원더 우먼 1984"
/// openDt : "2020-12-23"
/// salesAmt : "274407080"
/// salesShare : "51.4"
/// salesInten : "41920830"
/// salesChange : "18"
/// salesAcc : "3764838540"
/// audiCnt : "29884"
/// audiInten : "2462"
/// audiChange : "9"
/// audiAcc : "420870"
/// scrnCnt : "1877"
/// showCnt : "4329"

class DailyBoxOfficeList {
  DailyBoxOfficeList({
      String? rnum, 
      String? rank, 
      String? rankInten, 
      String? rankOldAndNew, 
      String? movieCd, 
      String? movieNm, 
      String? openDt, 
      String? salesAmt, 
      String? salesShare, 
      String? salesInten, 
      String? salesChange, 
      String? salesAcc, 
      String? audiCnt, 
      String? audiInten, 
      String? audiChange, 
      String? audiAcc, 
      String? scrnCnt, 
      String? showCnt,}){
    _rnum = rnum;
    _rank = rank;
    _rankInten = rankInten;
    _rankOldAndNew = rankOldAndNew;
    _movieCd = movieCd;
    _movieNm = movieNm;
    _openDt = openDt;
    _salesAmt = salesAmt;
    _salesShare = salesShare;
    _salesInten = salesInten;
    _salesChange = salesChange;
    _salesAcc = salesAcc;
    _audiCnt = audiCnt;
    _audiInten = audiInten;
    _audiChange = audiChange;
    _audiAcc = audiAcc;
    _scrnCnt = scrnCnt;
    _showCnt = showCnt;
}

  DailyBoxOfficeList.fromJson(dynamic json) {
    _rnum = json['rnum'];
    _rank = json['rank'];
    _rankInten = json['rankInten'];
    _rankOldAndNew = json['rankOldAndNew'];
    _movieCd = json['movieCd'];
    _movieNm = json['movieNm'];
    _openDt = json['openDt'];
    _salesAmt = json['salesAmt'];
    _salesShare = json['salesShare'];
    _salesInten = json['salesInten'];
    _salesChange = json['salesChange'];
    _salesAcc = json['salesAcc'];
    _audiCnt = json['audiCnt'];
    _audiInten = json['audiInten'];
    _audiChange = json['audiChange'];
    _audiAcc = json['audiAcc'];
    _scrnCnt = json['scrnCnt'];
    _showCnt = json['showCnt'];
  }
  String? _rnum;
  String? _rank;
  String? _rankInten;
  String? _rankOldAndNew;
  String? _movieCd;
  String? _movieNm;
  String? _openDt;
  String? _salesAmt;
  String? _salesShare;
  String? _salesInten;
  String? _salesChange;
  String? _salesAcc;
  String? _audiCnt;
  String? _audiInten;
  String? _audiChange;
  String? _audiAcc;
  String? _scrnCnt;
  String? _showCnt;

  String? get rnum => _rnum;
  String? get rank => _rank;
  String? get rankInten => _rankInten;
  String? get rankOldAndNew => _rankOldAndNew;
  String? get movieCd => _movieCd;
  String? get movieNm => _movieNm;
  String? get openDt => _openDt;
  String? get salesAmt => _salesAmt;
  String? get salesShare => _salesShare;
  String? get salesInten => _salesInten;
  String? get salesChange => _salesChange;
  String? get salesAcc => _salesAcc;
  String? get audiCnt => _audiCnt;
  String? get audiInten => _audiInten;
  String? get audiChange => _audiChange;
  String? get audiAcc => _audiAcc;
  String? get scrnCnt => _scrnCnt;
  String? get showCnt => _showCnt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rnum'] = _rnum;
    map['rank'] = _rank;
    map['rankInten'] = _rankInten;
    map['rankOldAndNew'] = _rankOldAndNew;
    map['movieCd'] = _movieCd;
    map['movieNm'] = _movieNm;
    map['openDt'] = _openDt;
    map['salesAmt'] = _salesAmt;
    map['salesShare'] = _salesShare;
    map['salesInten'] = _salesInten;
    map['salesChange'] = _salesChange;
    map['salesAcc'] = _salesAcc;
    map['audiCnt'] = _audiCnt;
    map['audiInten'] = _audiInten;
    map['audiChange'] = _audiChange;
    map['audiAcc'] = _audiAcc;
    map['scrnCnt'] = _scrnCnt;
    map['showCnt'] = _showCnt;
    return map;
  }

}