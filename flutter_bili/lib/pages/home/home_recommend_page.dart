import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_recommend_model.dart';
import 'package:flutter_bili/provider/recommend_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/recommend/recommend_banner.dart';
import 'package:flutter_bili/widget/home/recommend/recommend_small_row.dart';
import 'package:provider/provider.dart';

class HomeRecommendPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getHomeData(context),
        builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<RecommendProvider>(
              builder: (context,provider,child) {
                return Container(
                    color: Color(0xfff4f4f4),
                  child: ListView(
                    children: _getChildWidget(provider.homeRecommendModel.data),
                  ),
                );
              }
          );
        } else {
          return FirstLoadingWidget();
        }
        }
    );
  }

  Future _getHomeData(BuildContext context) async{
    await Provider.of<RecommendProvider>(context,listen: false).getHomeRecommendData();
    return 'ok';
  }

  List<Widget> _getChildWidget(RecommendListModel data) {
    List<Widget> list = [];
    bool skipNext = false;
    for (int index = 0; index < data.items.length;index++) {
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
        list.add(RecommendSmallRow(first: val,last: data.items[index+1],));
        skipNext = true;
      }
      //2.large_cover_v5 一行显示一条
      if (val.cardType == 'large_cover_v5') {

      }
    }
    return list;
  }
}
