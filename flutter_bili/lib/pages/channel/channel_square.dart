import 'package:flutter/material.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/provider/channel_provider.dart';
import 'package:flutter_bili/widget/channel/bottom_line10.dart';
import 'package:flutter_bili/widget/channel/channel_dynamic_banner.dart';
import 'package:flutter_bili/widget/channel/channel_hot.dart';
import 'package:flutter_bili/widget/channel/channel_search.dart';
import 'package:flutter_bili/widget/channel/channel_subscribe_panel.dart';
import 'package:flutter_bili/widget/channel/rcmd_channel_list_widget.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:provider/provider.dart';


class ChannelSquarePage extends StatefulWidget {
  @override
  _ChannelSquarePageState createState() => _ChannelSquarePageState();
}

class _ChannelSquarePageState extends State<ChannelSquarePage> with AutomaticKeepAliveClientMixin {
  var _futureBuilderFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getChannelRcmdDataList(context);
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return FutureBuilder(
      future: _futureBuilderFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<ChannelProvider>(
              builder: (context,provider,_) {
                return Container(
                  color: Colors.white,
                  child: ListView(
                    children: _childrenWidget(provider.channelSquare),
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

  List<Widget> _childrenWidget(ChannelSquare channelSquare) {
    List<Widget> list = [];

    channelSquare.data.forEach((val) {
      if (val.modelType == 'search') {
        list.add(ChannelSearch());
      } else if (val.modelType == 'subscribe') {
        list.add(ChannelSubscribePanel(val.items));
        list.add(BottomLine10());
      } else if (val.modelType == 'rcmd') {
        list.add(ChannelHotWidget(val));
        if (val.rcmItems.rcmDynamic != null && val.rcmItems.rcmDynamic.length != 0) {
          list.add(ChannelDynamicBanner(val.rcmItems.rcmDynamic));
        }
        if (val.rcmItems.rcmd != null && val.rcmItems.rcmd.length != 0) {
          list.add(ChannelRcmdListWidget(val.rcmItems.rcmd));
        }
      }
    });

    return list;
  }

  Future _getChannelRcmdDataList(BuildContext context) async {
    await Provider.of<ChannelProvider>(context,listen: false).getChannelSquareList();
    return 'ok';
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
