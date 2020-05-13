import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_banner.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_card.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_flow_tag.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_nav.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_rank.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_timeline.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_v_card.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/bangumi_provider.dart';

class HomeBangumiPage extends StatefulWidget {
  @override
  _HomeBangumiPageState createState() => _HomeBangumiPageState();
}

class _HomeBangumiPageState extends State<HomeBangumiPage> with AutomaticKeepAliveClientMixin {
  var _futureBuilderFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getBangumiDataList(context);
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: _futureBuilderFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<BangumiProvider>(
              builder: (context, provider, child) {
                return Container(
                  color: Colors.white,
                  child: ListView(
                    children: _bangumiListWidget(provider.bangumi),
                  ),
                );
              });
        } else {
          return FirstLoadingWidget();
        }
      },
    );
  }

  List<Widget> _bangumiListWidget(Bangumi bangumi) {
    List<Widget> list = [];
    bangumi.result.modules.forEach((val) {
      if (val.style == 'banner') {
        list.add(BangumiBanner(val.items));
      } else if (val.style == 'function') {
        list.add(BangumiNav(val.items));
      } else if (val.style == 'card') {
        list.add(BangumiCardWidget(val));
      } else if (val.style == 'timeline') {
        list.add(BangumiTimeLine(val));
      } else if (val.style == 'rank') {
        list.add(BangumiRank(val));
      } else if (val.style == 'flow') {
        list.add(BangumiFlowTagWidget(val));
      } else if (val.style == 'v_card' && val.items.length != 0) {
        list.add(BangumiVCard(val));
      }
    });
    return list;
  }

  Future _getBangumiDataList(BuildContext context) async {
    await Provider.of<BangumiProvider>(context,listen: false).getBangumiData();
    return 'ok';
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
