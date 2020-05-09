import 'package:flutter/cupertino.dart';
import 'package:flutter_bili/config.dart';
import 'package:flutter_bili/model/home_popular_model.dart';
import 'package:flutter_bili/service/request.dart';

class PopularProvider with ChangeNotifier {
  Popular _popular; //首页热门数据

  Popular get popular => _popular;

  //获取首页热门数据
  getHomePopularListData() async {
    print('获取首页热门数据');
    await requestData(Config.popularList, 'get').then((res) {
      Popular popular = Popular.fromJson(res);
      _popular = popular;
      notifyListeners();
    });
  }
}