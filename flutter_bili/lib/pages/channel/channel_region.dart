import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/model/channel/channel_region_model.dart';
import 'package:flutter_bili/provider/channel_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';


class ChannelRegion extends StatefulWidget {
  @override
  _ChannelRegionState createState() => _ChannelRegionState();
}

class _ChannelRegionState extends State<ChannelRegion>  with AutomaticKeepAliveClientMixin {
  var _futureBuilderFuture;
  final double _margin = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getChannelRegionList(context);
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
                  width: ScreenUtil().setWidth(375),
                  child: ListView(
//                    shrinkWrap: true,
                    children: <Widget>[
                      Wrap(
                        children: provider.regionListModel.data.map((model) {
                          return _singleCell(model);
                        }).toList(),
                      )
                    ],
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

  Widget _singleCell(ChannelRegionModel model) {
    double iconWidth = ScreenUtil().setWidth(35);
    return InkWell(
      onTap: () {
      },
      child: Container(
        width: (ScreenUtil().setWidth(375) - 2 * _margin) / 4 - 0.01,
        color: Colors.white,
        padding: EdgeInsets.only(top: 10),
        height: 75,
//        alignment: Alignment.center,
        child: Column(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: model.logo,
              fit: BoxFit.cover,
              width: iconWidth,
              height: iconWidth,
              placeholder: (context, url) => Container(
                  width: iconWidth,
                  height: iconWidth,
                  color: Color(0xfff4f4f4),
                  child: Center(
                    child: Image.asset(
                      'images/image_tv.png',
                      width: 20,
                    ),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              color: Colors.white,
              child: Text(
                model.name,
                style: TextStyle(color: Color(0xff444444), fontSize: 13),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future _getChannelRegionList(BuildContext context) async {
    await Provider.of<ChannelProvider>(context,listen: false).getChannelRegionList();
    return 'ok';
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
