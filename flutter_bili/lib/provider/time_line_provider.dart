import 'package:flutter/foundation.dart';
import 'package:flutter_bili/model/channel/channel_region_model.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_bili/service/request.dart';

import '../config.dart';

class TimeLineProvider with ChangeNotifier {
  TimeLineData _timeLineData; //频道

  TimeLineData get timeLineData => _timeLineData;

  getTimeLineListData() async{
    print('获取动态');
    await requestData(Config.dynamicSvr, 'get').then((res) {
      TimeLineData list = TimeLineData.fromJson(res);
      _timeLineData = list;
      notifyListeners();
    });
  }
}