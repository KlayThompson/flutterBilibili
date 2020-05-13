import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_common_channel_model.dart';
import 'package:flutter_bili/service/request.dart';

import '../config.dart';

class HomeCommonChannelProvider with ChangeNotifier {
  HomeChannelCommonModel _channelCommonModel; //首页通用频道数据
  bool _disposed = false;

  HomeChannelCommonModel get channelCommonModel => _channelCommonModel;

  //首页通用频道数据
  getHomeCommonChannelListData(int channelId) async {
    print('获取首页热门数据');
    await requestData(Config.commonChannelUri + '$channelId', 'get').then((res) {
      HomeChannelCommonModel model = HomeChannelCommonModel.fromJson(res);
      _channelCommonModel = model;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _disposed = true;
  }

  @override
  void notifyListeners() {
    // TODO: implement notifyListeners
    if (!_disposed) {
      super.notifyListeners();
    }
  }
}