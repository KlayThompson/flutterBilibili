import 'package:flutter/material.dart';
import 'package:flutter_bili/model/app_config_model.dart';
import 'package:flutter_bili/pages/channel_page.dart';
import 'package:flutter_bili/pages/home_page.dart';
import 'package:flutter_bili/pages/mine_page.dart';
import 'package:flutter_bili/pages/time_line_page.dart';
import 'package:flutter_bili/pages/vip_store_page.dart';
import 'package:flutter_bili/provider/home_common_provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class IndexPage extends StatelessWidget {
  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe60e, fontFamily: "appIconFonts")),
        title: Text("首页")),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe661, fontFamily: "appIconFonts")),
        activeIcon: Icon(IconData(0xe600, fontFamily: "appIconFonts")),
        title: Text('频道')),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe602, fontFamily: "appIconFonts")),
        title: Text('动态')),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe653, fontFamily: "appIconFonts")),
        activeIcon: Icon(IconData(0xe652, fontFamily: "appIconFonts")),
        title: Text('会员购')),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe606, fontFamily: "appIconFonts")),
        title: Text('我的')),
  ];

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 667);
    return FutureBuilder(
        future: _getAppConfig(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<HomeCommonProvider>(builder: (context, pro, child) {
              return Scaffold(
                  bottomNavigationBar: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: pro.tabIndex,
                    items: _setItems(pro.appConfigModel),
                    onTap: (int index) {
                      pro.setTabBarIndex(index);
                    },
                  ),
                  body: IndexedStack(
                    index: pro.tabIndex,
                    children: _getPagesList(pro.appConfigModel),
                  ));
            });
          } else {
            return Scaffold(
                appBar: AppBar(
                  title: Text('加载中...'),
                ),
                body: Center(
                  child: Text('加载中...'),
                ));
          }
        });
  }

  List<BottomNavigationBarItem> _setItems(AppConfigModel model) {
    if (model == null) {
      return items;
    }
    List<BottomAppBarModel> bottoms = model.data.bottom;
    return bottoms.map((val) {
      return BottomNavigationBarItem(
          icon: CachedNetworkImage(
            imageUrl: val.icon,
            fadeInDuration: Duration(milliseconds: 0),
            fadeOutDuration: Duration(milliseconds: 0),
            width: 24,
            placeholder: (context, url) => Container(
              width: 24,
              height: 24,
              color: Colors.transparent,
            ),
          ),
          title: Text(val.name),
          activeIcon: CachedNetworkImage(
            imageUrl: val.iconSelected,
            fadeInDuration: Duration(milliseconds: 0),
            fadeOutDuration: Duration(milliseconds: 0),
            width: 24,
            placeholder: (context, url) => Container(
              width: 24,
              height: 24,
              color: Colors.transparent,
            ),
          )
      );
    }).toList();
  }

  List<Widget> _getPagesList(AppConfigModel model) {
    return [
      HomePage(model),
      ChannelPage(),
      TimeLinePage(),
      VipStore(),
      MinePage()
    ];
  }

  Future _getAppConfig(BuildContext context) async {
    await Provider.of<HomeCommonProvider>(context, listen: false)
        .getAppConfig();
    return 'ok';
  }
}
