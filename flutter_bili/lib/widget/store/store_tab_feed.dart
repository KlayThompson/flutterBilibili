import 'package:flutter/material.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_screenutil/screenutil.dart';

class StoreFeedTabWidget extends StatefulWidget {
  final List<VipStoreFeedTabModel> feedTabs;
  final StoreFeeds defaultFeeds;
  StoreFeedTabWidget({this.feedTabs, this.defaultFeeds});

  @override
  _StoreFeedTabWidgetState createState() => _StoreFeedTabWidgetState();
}

class _StoreFeedTabWidgetState extends State<StoreFeedTabWidget> with SingleTickerProviderStateMixin {
  TabController _tabController;
  List<Widget> _tabBarViewChildren = [];

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: widget.feedTabs.length, vsync: this, initialIndex: 0);
    _tabBarViewChildren = _getTabBarViewChildren();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      height: ScreenUtil().setHeight(667) - 64 - 64,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: false,
            titleSpacing: 0,
            elevation: 0,
            brightness: Brightness.light,
            title: TabBar(
              controller: _tabController,
              tabs: _getTabs(),
              isScrollable: true,
              labelStyle: TextStyle(fontSize: ScreenUtil().setSp(16), fontWeight: FontWeight.w500),
              labelColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.fromLTRB(3, 0, 3, 17),
              indicatorWeight: 3,
              unselectedLabelColor: Color(0xff777777),
              indicatorColor: Colors.pink[300],
              onTap: (index) {
                print(index);
              },
            ),
          ),
          body: TabBarView(controller: _tabController, children: _tabBarViewChildren)
      ),
    );
  }

  List<Widget> _getTabBarViewChildren() {
    List<Widget> list = [];
    widget.feedTabs.forEach((val) {
      list.add(Center(child: Text(val.title),));
    });
    return list;
  }

  List<Widget> _getTabs() {
    return widget.feedTabs.map((val) {
      return Tab(
        text: val.title,
      );
    }).toList();
  }
}
