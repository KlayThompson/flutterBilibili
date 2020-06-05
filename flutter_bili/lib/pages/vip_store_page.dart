import 'package:flutter/material.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_bili/provider/vip_store_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/store/store_banner_widget.dart';
import 'package:flutter_bili/widget/store/store_block_widget.dart';
import 'package:flutter_bili/widget/store/store_category_nav.dart';
import 'package:flutter_bili/widget/store/store_search_widget.dart';
import 'package:flutter_bili/widget/store/store_tab_feed.dart';
import 'package:provider/provider.dart';

class VipStore extends StatefulWidget {
  @override
  _VipStoreState createState() => _VipStoreState();
}

class _VipStoreState extends State<VipStore> with AutomaticKeepAliveClientMixin {

  var _futureBuilderFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getVipStoreData(context);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: _futureBuilderFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<VipStoreProvider>(
              builder: (context,provider,_) {
                return Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    titleSpacing: 0,
                    elevation: 0,
                    brightness: Brightness.light,
                    centerTitle: true,
                    actions: provider.dataModel.data.vo.entryList.map((item) {
                      return IconButton(
                          icon: Image.network('https:${item.imgUrl}',width: 24,),
                          onPressed: () {}
                      );
                    }).toList(),
                    title: Text('会员购', style: TextStyle(color: Color(0xff444444), fontSize: 18),),
                  ),
                  body: Container(
                    color: Colors.white,
                    child: ListView(
                      children: _childWidget(provider.dataModel),
                    ),
                  ),
                );
              }
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              titleSpacing: 0,
              elevation: 0,
              brightness: Brightness.light,
              title: Text('会员购', style: TextStyle(color: Color(0xff444444), fontSize: 18),),
            ),
            body: FirstLoadingWidget(),
          );
        }
      },
    );
  }

  List<Widget> _childWidget(VipStoreDataModel dataModel) {
    List<Widget> list = [];
    //top card
    dataModel.data.vo.cards.forEach((card) {
      if (card.type == 'container-oneColumn') {
        if (card.items.length != 0 || card.items != null) {
          StoreCardItem item = card.items.first;
          if (item.type == 'search') {
            list.add(StoreSearchWidget(item.data));
          } else if (item.type == 'banners') {
            list.add(StoreBannerWidget(item));
          }
        }
      } else if (card.type == 'container-fourColumn') {
        list.add(StoreCategoryNavWidget(card.items));
      } else if (card.type == 'container-threeColumn') {
        list.add(StoreBlockWidget(card.items));
      }
    });
    list.add(StoreFeedTabWidget(feedTabs: dataModel.data.vo.feedTabs, defaultFeeds: dataModel.data.vo.feeds,));
    return list;
  }

  Future _getVipStoreData(BuildContext context) async {
    await Provider.of<VipStoreProvider>(context,listen: false).getVipStoreData();
    return 'ok';
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
