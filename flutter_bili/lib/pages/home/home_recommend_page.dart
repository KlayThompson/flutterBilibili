import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
import 'package:flutter_bili/provider/recommend_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/recommend/recommend_banner.dart';
import 'package:flutter_bili/widget/home/recommend/recommend_small_row.dart';
import 'package:provider/provider.dart';


class HomeRecommendPage extends StatefulWidget {
  @override
  _HomeRecommendPageState createState() => _HomeRecommendPageState();
}

class _HomeRecommendPageState extends State<HomeRecommendPage> with AutomaticKeepAliveClientMixin {
  var _futureBuilderFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getHomeData(context);
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
        future: _futureBuilderFuture,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<RecommendProvider>(
                builder: (context, provider, child) {
                  return Container(
                    color: Color(0xfff4f4f4),
                    child: ListView(
                      children: _getChildWidget(provider.homeRecommendModel.data),
                    ),
                  );
                });
          } else {
            return FirstLoadingWidget();
          }
        });
  }

  Future _getHomeData(BuildContext context) async {
    await Provider.of<RecommendProvider>(context, listen: false)
        .getHomeRecommendData();
    return 'ok';
  }

  List<Widget> _getChildWidget(RecommendListModel data) {
    List<Widget> list = [];
    bool skipNext = false;
    for (int index = 0; index < data.items.length; index++) {
      if (skipNext) {
        skipNext = false;
        continue;
      }
      RecommendItem val = data.items[index];
      //判断推荐类型
      //1.banner
      if (val.cardType == 'banner_v5') {
        list.add(RecommendBanner(val.bannerItem));
      }
      //2.small_cover_v2 一行显示两条
      if (val.cardType == 'small_cover_v2' && index < data.items.length - 1) {
        RecommendItem next = data.items[index + 1];
        if (next.cardType != 'small_cover_v2') {
          next = data.items[index + 2];
        }
        list.add(RecommendSmallRow(
          first: val,
          last: next,
        ));
        skipNext = true;
      }
      //2.large_cover_v5 一行显示一条
      if (val.cardType == 'large_cover_v5') {}
    }
    return list;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
