import 'package:flutter/material.dart';
import 'package:flutter_bili/config.dart';
import 'package:flutter_bili/model/home_live_model.dart';
import 'package:flutter_bili/service/request.dart';

class LiveProvider with ChangeNotifier {

  HomeLiveInfoModel _homeLiveInfoModel;

  HomeLiveInfoModel get homeLiveInfoModel => _homeLiveInfoModel;

  getHomeLiveAllList() async{
    print('获取直播首页数据');
    await requestData(Config.liveAllList, 'get').then((res) {
      HomeLiveInfoModel infoModel = HomeLiveInfoModel.fromJson(res);
      _homeLiveInfoModel = infoModel;
      notifyListeners();
    });
  }
}