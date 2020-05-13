import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_popular_model.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/popular/popular_large_cover_v1.dart';
import 'package:flutter_bili/widget/home/popular/popular_three_item_all_v2.dart';
import 'package:flutter_bili/widget/home/popular/popular_top_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/popular_provider.dart';

class HomePopularPage extends StatefulWidget {
  @override
  _HomePopularPageState createState() => _HomePopularPageState();
}

class _HomePopularPageState extends State<HomePopularPage> with AutomaticKeepAliveClientMixin {

  var _futureBuilderFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getPopularListData(context);
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: _futureBuilderFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<PopularProvider>(
              builder: (context,provider,child) {
                return Container(
                  color: Colors.white,
                  child: ListView(
                    children: _popularListWidget(provider.popular),
                  ),
                );
              }
          );
        } else {
          return FirstLoadingWidget();
        }
      },
    );
  }

  List<Widget> _popularListWidget(Popular popular) {
    List<Widget> list = [];
    list.add(PopularTopWidget(popular.config.topItems));
    popular.data.forEach((val) {
      if (val.cardType == 'large_cover_v1') {
        list.add(PopularLargeCoverV1(val));
      } else if (val.cardType == 'three_item_all_v2') {
        list.add(PopularThreeItemAllV2(val));
      }
    });
    return list;
  }

  Future _getPopularListData(BuildContext context) async{
    await Provider.of<PopularProvider>(context,listen: false).getHomePopularListData();
    return 'ok';
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
