import 'package:flutter/foundation.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_bili/service/request.dart';

import '../config.dart';

class VipStoreProvider with ChangeNotifier {
  VipStoreDataModel _dataModel; //频道

  VipStoreDataModel get dataModel => _dataModel;

  getVipStoreData() async{
    print('获取会员购');
    await requestData(Config.mallHome, 'get').then((res) {
      VipStoreDataModel list = VipStoreDataModel.fromJson(res);
      _dataModel = list;
      notifyListeners();
    });
  }
}