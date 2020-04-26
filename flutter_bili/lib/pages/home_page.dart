import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/app_config_model.dart';
import 'package:flutter_bili/pages/home/channel_common_page.dart';
import 'package:flutter_bili/pages/home/home_live_page.dart';
import 'package:flutter_bili/pages/tabbar/appbar_leading.dart';
import 'package:flutter_bili/provider/home_common_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/widget/home/top_tab_actions.dart';

class HomePage extends StatefulWidget {
  final AppConfigModel appConfigModel;
  HomePage(this.appConfigModel);
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    final List<HomeChannelTabModel> _tabs = widget.appConfigModel.data.tab;
    int index = 0;
    for (int i = 0; i < _tabs.length; i++) {
      HomeChannelTabModel model = _tabs[i];
      if (model.defaultSelected == 1) {
        index = i;
      }
    }
    _tabController = TabController(length: _tabs.length, vsync: this,initialIndex: index);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: AppBarLeadingWidget(config: widget.appConfigModel.config,),
          centerTitle: false,
          titleSpacing: 0,
          elevation: 0,
          brightness: Brightness.light,
          actions: HomeTopAppBarActionsWidget().getHomeTopRightActions(widget.appConfigModel.data.top),
          bottom: TabBar(
            controller: _tabController,
            tabs: _getTabs(widget.appConfigModel.data.tab),
            isScrollable: true,
            labelColor: Colors.pink[300],
            unselectedLabelColor: Color(0xff777777),
            indicatorColor: Colors.pink[300],
          ),
        ),
        body: TabBarView(controller: _tabController, children: _getTabBarViewChildren())
    );
  }

  List<Widget> _getTabs(List<HomeChannelTabModel> tabList) {
    return tabList.map((val) {
      return Tab(
        text: val.name,
      );
    }).toList();
  }

  List<Widget> _getTabBarViewChildren() {
    List<HomeChannelTabModel> tabList = widget.appConfigModel.data.tab;
    return tabList.map((val) {
      return ChannelCommonPage(val.uri);
    }).toList();
  }
}
