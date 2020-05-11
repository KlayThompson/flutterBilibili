import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_banner.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_card.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_nav.dart';
import 'package:flutter_bili/widget/home/bangumi/bangumi_timeline.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/bangumi_provider.dart';

class HomeBangumiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getBangumiDataList(context),
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
      }
    });
    return list;
  }

  Future _getBangumiDataList(BuildContext context) async {
    await Provider.of<BangumiProvider>(context,listen: false).getBangumiData();
    return 'ok';
  }
}
