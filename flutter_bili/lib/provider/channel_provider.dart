import 'package:flutter/foundation.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/service/request.dart';

import '../config.dart';

class ChannelProvider with ChangeNotifier {
  ChannelSquare _channelSquare; //频道

  ChannelSquare get channelSquare => _channelSquare;

  getChannelSquareList() async{
    print('获取频道数据');
    await requestData(Config.channel, 'get').then((res) {
      ChannelSquare list = ChannelSquare.fromJson(res);
      _channelSquare = list;
      notifyListeners();
    });
  }
}