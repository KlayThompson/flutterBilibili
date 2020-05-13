import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_common_channel_model.dart';
import 'package:flutter_bili/provider/home_common_channel_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/home/other_channel/other_banner.dart';
import 'package:flutter_bili/widget/home/other_channel/other_multi_item.dart';
import 'package:flutter_bili/widget/home/other_channel/other_nav.dart';
import 'package:provider/provider.dart';

class HomeOtherChannelPage extends StatelessWidget {
  final int channelId;
  HomeOtherChannelPage(this.channelId);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getBangumiDataList(context),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<HomeCommonChannelProvider>(
              builder: (context, provider, child) {
                return Container(
                  color: Color(0xfff4f4f4),
                  child: ListView(
                    children: _commonChannelListWidget(provider.channelCommonModel.data),
                  ),
                );
              });
        } else {
          return FirstLoadingWidget();
        }
      },
    );
  }

  List<Widget> _commonChannelListWidget(CommonChannelListModel listModel) {
    List<Widget> list = [];
    listModel.items.forEach((val) {
      if (val.cardType == 'banner_v5') {
        list.add(OtherChannelBanner(val.bannerItem));
      } else if (val.cardType == 'multi_item_h') {
        list.add(OtherChannelNav(val.items));
      } else if (val.cardType == 'multi_item') {
        list.add(OtherChannelMultiItemWidget(val));
      }
    });
    return list;
  }

  Future _getBangumiDataList(BuildContext context) async {
    await Provider.of<HomeCommonChannelProvider>(context,listen: false).getHomeCommonChannelListData(channelId);
    return 'ok';
  }
}
