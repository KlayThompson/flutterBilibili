
import 'package:flutter/cupertino.dart';
import 'package:flutter_bili/config.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/service/request.dart';

class BangumiProvider with ChangeNotifier {
  Bangumi _bangumi; //首页追番数据
  int _selectDay; //选中的日期
  int _today;//今天星期几
  Bangumi _cinema;//首页影视数据

  Bangumi get bangumi => _bangumi;
  int get selectDay => _selectDay;
  int get today => _today;
  Bangumi get cinema => _cinema;

  //获取追番数据
  getBangumiData() async {
    print('获取首页追番数据');
    await requestData(Config.bangumi, 'get').then((res) {
      Bangumi bangumi = Bangumi.fromJson(res);
      bangumi.result.modules.forEach((modules){
        modules.items.forEach((item) {
          if (item.isToday != null && item.isToday == 1) {
            _selectDay = item.dayOfWeek;
            _today = item.dayOfWeek;
          }
        });
      });
      _bangumi = bangumi;
      notifyListeners();
    });
  }
  //用户点击了选择日期按钮
  selectDayWithInt(int value) {
    _selectDay = value;
    notifyListeners();
  }

  //获取追番数据
  getCinemaData() async {
    print('获取首页追番数据');
    await requestData(Config.cinema, 'get').then((res) {
      Bangumi bangumi = Bangumi.fromJson(res);
      bangumi.result.modules.forEach((modules){
        modules.items.forEach((item) {
          if (item.isToday != null && item.isToday == 1) {
            _selectDay = item.dayOfWeek;
            _today = item.dayOfWeek;
          }
        });
      });
      _cinema = bangumi;
      notifyListeners();
    });
  }
}