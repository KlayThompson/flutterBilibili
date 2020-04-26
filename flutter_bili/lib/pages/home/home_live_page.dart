import 'package:flutter/material.dart';
import 'package:flutter_bili/widget/home/live_banner.dart';
import 'package:flutter_bili/widget/home/live_nav.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/live_provider.dart';

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getLiveAllList(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<LiveProvider>(
                builder: (context, provider, child) {
                  return Container(
                    color: Colors.white,
                    width: ScreenUtil().setWidth(375),
                    child: ListView(
                      children: <Widget>[
                        LiveBannerWidget(provider.homeLiveInfoModel.data.banner[0].list),
                        LiveNavWidget(list: provider.homeLiveInfoModel.data.areaEntranceV2[0].list,),
                      ],
                    ),
                  );
                }
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }

  Future _getLiveAllList(BuildContext context) async{
    await Provider.of<LiveProvider>(context,listen: false).getHomeLiveAllList();
    return 'ok';
  }
}
