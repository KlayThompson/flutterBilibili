
import 'package:flutter/cupertino.dart';
import 'package:flutter_bili/config.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/service/request.dart';

class BangumiProvider with ChangeNotifier {
  Bangumi _bangumi; //首页追番数据
  int _selectDay;

  Bangumi get bangumi => _bangumi;
  int get selectDay => _selectDay;

  //获取追番数据
  getBangumiData() async {
    print('获取首页追番数据');
    await requestData(Config.bangumi, 'get').then((res) {
      Bangumi bangumi = Bangumi.fromJson(res);
      _bangumi = bangumi;
      notifyListeners();
    });
  }
  //用户点击了选择日期按钮
  selectDayWithInt(int value) {
    _selectDay = value;
    notifyListeners();
  }
}