import 'package:flutter/material.dart';
import 'package:flutter_bili/config.dart';
import 'package:flutter_bili/model/app_config_model.dart';
import 'package:flutter_bili/service/request.dart';

class HomeCommonProvider with ChangeNotifier {
  int _tabIndex = 0;
  AppConfigModel _appConfigModel;// 应用配置信息

  int get tabIndex => _tabIndex;
  AppConfigModel get appConfigModel => _appConfigModel;


  setTabBarIndex(int index) {
    print('设置tabbar index');
    _tabIndex = index;
    notifyListeners();
  }

  // 获取应用配置信息
  getAppConfig() async{
    print('获取应用配置信息');
   await requestData(Config.appConfig, 'get').then((res) {
      AppConfigModel model = AppConfigModel.fromJson(res);
      _appConfigModel = model;
      notifyListeners();
    });
  }
}