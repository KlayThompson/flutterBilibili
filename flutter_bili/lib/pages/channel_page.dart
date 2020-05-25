import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/channel/channel_region.dart';
import 'package:flutter_bili/pages/channel/channel_square.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChannelPage extends StatefulWidget {
  @override
  _ChannelPageState createState() => _ChannelPageState();
}

class _ChannelPageState extends State<ChannelPage> with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  TabController _tabController;
  List<String> _tabs = ['频道', '分区'];
  List<Widget> _children = [
    ChannelSquarePage(),
    ChannelRegion()
  ];

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: _tabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0,
          elevation: 0.5,
          brightness: Brightness.light,
            title: TabBar(
              controller: _tabController,
              tabs: _getTabs(),
              isScrollable: true,
              labelStyle: TextStyle(fontSize: ScreenUtil().setSp(16)),
              labelColor: Colors.pink[300],
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Color(0xff777777),
              indicatorColor: Colors.pink[300],
              onTap: (index) {
                print(index);
              },
            ),
        ),
        body: TabBarView(controller: _tabController, children: _children)
    );
  }

  List<Widget> _getTabs() {
    return _tabs.map((val) {
      return Tab(
        text: val,
      );
    }).toList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
