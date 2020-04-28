import 'package:flutter/material.dart';
import 'package:flutter_bili/config.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
import 'package:flutter_bili/service/request.dart';

class RecommendProvider with ChangeNotifier {
  HomeRecommendModel _homeRecommendModel; //首页推荐数据

  HomeRecommendModel get homeRecommendModel => _homeRecommendModel;

  //获取首页数据
  getHomeRecommendData() async {
    print('获取首页推荐数据');
    await requestData(Config.homeRecommend, 'get').then((res) {
      HomeRecommendModel recommendModel = HomeRecommendModel.fromJson(res);
      _homeRecommendModel = recommendModel;
      notifyListeners();
    });
  }
}