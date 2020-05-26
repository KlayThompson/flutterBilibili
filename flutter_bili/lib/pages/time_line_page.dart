import 'package:flutter/material.dart';
import 'package:flutter_bili/model/timeline/time_line_data_model.dart';
import 'package:flutter_bili/provider/time_line_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:flutter_bili/widget/timeline/timline_cell_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class TimeLinePage extends StatefulWidget {
  @override
  _TimeLinePageState createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> with AutomaticKeepAliveClientMixin {
  var _futureBuilderFuture;
  final _notLoginImageAsset = 'images/dynamic_login_guide.png';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getTimeLineDataList(context);
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          titleSpacing: 0,
          elevation: 0,
          brightness: Brightness.light,
          title: Text('动态', style: TextStyle(color: Colors.pink[300], fontSize: 18),),
        ),
        body: FutureBuilder(
          future: _futureBuilderFuture,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Consumer<TimeLineProvider>(
                  builder: (context,provider,_) {
                    return Container(
                      color: Color(0xfff4f4f4),
                      child: ListView(
                        children: _timelineDataListWidget(provider.timeLineData),
                      ),
                    );
                  }
              );
            } else {
              return FirstLoadingWidget();
            }
          },
        )
    );
  }

  List<Widget> _timelineDataListWidget(TimeLineData data) {
    List<Widget> list = [];
    list.add(_tipLoginImage());
    data.data.cards.forEach((model) {
      list.add(TimeLineCellWidget(model));
    });
    return list;
  }

  Widget _tipLoginImage() {
    return Container(
      width: ScreenUtil().setWidth(375),
      margin: EdgeInsets.only(bottom: 10),
      child: Image.asset(_notLoginImageAsset),
    );
  }

  Future _getTimeLineDataList(BuildContext context) async {
    await Provider.of<TimeLineProvider>(context,listen: false).getTimeLineListData();
    return 'ok';
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
