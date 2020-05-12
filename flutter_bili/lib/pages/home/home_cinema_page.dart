import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/provider/bangumi_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_banner.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_card.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_flow_tag.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_list.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_nav.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_rank.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_timeline.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_topic.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_v_card.dart';
import 'package:provider/provider.dart';

class HomeCinemaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getCinemaDataList(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<BangumiProvider>(
              builder: (context, provider, child) {
                return Container(
                  color: Colors.white,
                  child: ListView(
                    children: _bangumiListWidget(provider.cinema),
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
      } else if (val.style == 'topic') {
        list.add(BangumiTopic(val));
      } else if (val.style == 'list') {
        list.add(BangumiList(val));
      }
    });
    return list;
  }

  Future _getCinemaDataList(BuildContext context) async {
    await Provider.of<BangumiProvider>(context,listen: false).getCinemaData();
    return 'ok';
  }
}
