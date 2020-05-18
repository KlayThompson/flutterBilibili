import 'package:flutter/foundation.dart';
import 'package:flutter_bili/model/channel/channel_region_model.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/service/request.dart';

import '../config.dart';

class ChannelProvider with ChangeNotifier {
  ChannelSquare _channelSquare; //频道
  ChannelRegionListModel _regionListModel; //频道分区

  ChannelSquare get channelSquare => _channelSquare;
  ChannelRegionListModel get regionListModel => _regionListModel;

  getChannelSquareList() async{
    print('获取频道数据');
    await requestData(Config.channel, 'get').then((res) {
      ChannelSquare list = ChannelSquare.fromJson(res);
      _channelSquare = list;
      notifyListeners();
    });
  }

  getChannelRegionList() async {
    print('获取频道分区数据');
    await requestData(Config.channelRegion, 'get').then((res) {
      ChannelRegionListModel list = ChannelRegionListModel.fromJson(res);
      _regionListModel = list;
      notifyListeners();
    });
  }
}