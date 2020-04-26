import 'package:flutter/material.dart';
import 'package:flutter_bili/model/app_config_model.dart';

class HomeTopAppBarActionsWidget {
  List<Widget> getHomeTopRightActions(List<HomeTopRightModel> top) {
    return top.map((val) {
      return IconButton(
          icon: Image.network(val.icon,width: 24,),
          onPressed: () {}
          );
    }).toList();
  }
}
