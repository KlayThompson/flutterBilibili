import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/channel_page.dart';
import 'package:flutter_bili/pages/home_page.dart';
import 'package:flutter_bili/pages/mine_page.dart';
import 'package:flutter_bili/pages/time_line_page.dart';
import 'package:flutter_bili/pages/vip_store_page.dart';
import 'package:flutter_bili/provider/home_common_provider.dart';
import 'package:provider/provider.dart';

class IndexPage extends StatelessWidget {
  final List<Widget> pages = [
    HomePage(),
    ChannelPage(),
    TimeLinePage(),
    VipStore(),
    MinePage()
  ];

  final List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe60e, fontFamily: "appIconFonts")),
        title: Text("首页")
    ),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe661, fontFamily: "appIconFonts")),
        activeIcon: Icon(IconData(0xe600, fontFamily: "appIconFonts")),
        title: Text('频道')
    ),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe602, fontFamily: "appIconFonts")),
        title: Text('动态')
    ),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe653, fontFamily: "appIconFonts")),
        activeIcon: Icon(IconData(0xe652, fontFamily: "appIconFonts")),
        title: Text('会员购')
    ),
    BottomNavigationBarItem(
        icon: Icon(IconData(0xe606, fontFamily: "appIconFonts")),
        title: Text('我的'))
    ,
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeCommonProvider>(builder: (context, pro, child) {
      return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: pro.tabIndex,
            items: items,
            onTap: (int index) {
              pro.setTabBarIndex(index);
            },
          ),
          body: IndexedStack(
            index: pro.tabIndex,
            children: pages,
          ));
    });
  }
}
