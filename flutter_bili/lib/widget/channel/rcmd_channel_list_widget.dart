import 'package:flutter/material.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/model/common_model.dart';
import 'package:flutter_bili/provider/channel_provider.dart';
import 'package:flutter_bili/widget/common/common_grid_cell.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ChannelRcmdListWidget extends StatelessWidget {
  final List<SingleChannelRcmdListModel> rcmds;
  ChannelRcmdListWidget(this.rcmds);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: this.rcmds.map((val) {
          return _singleChannelRcmdPanel(context,val);
        }).toList(),
      ),
    );
  }

  Widget _singleChannelRcmdPanel(BuildContext context,SingleChannelRcmdListModel model) {
    bool isLast = this.rcmds.last.id == model.id;
    return Container(
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          _sectionHeader(model),
          _rcmdListView(model,isLast),
          isLast ? _changeRcmdList(context) : Container()
        ],
      ),
    );
  }

  Widget _sectionHeader(SingleChannelRcmdListModel model) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                model.title,
                style: TextStyle(fontSize: ScreenUtil().setSp(15),color: Color(0xff444444),fontWeight: FontWeight.bold),
              ),
              Text(
                model.desc1,
                style: TextStyle(fontSize: 13,color: Colors.black54),
              ),
            ],
          ),
          model.descButton == null ? Container() :
          Container(
            padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
            decoration: BoxDecoration(
                border: Border.all(width: 0.5,color: Colors.pink[300]),
                borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Text(
                model.descButton.text,
              style: TextStyle(
                color: Colors.pink[300],
                fontSize: 14
              ),
            ),
          )
        ],
      ),
    );
  }
//  具体推荐列表
  Widget _rcmdListView(SingleChannelRcmdListModel model,bool isLast) {
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: isLast ? BorderSide(width: 0.5,color: Colors.transparent) : BorderSide(width: 0.5,color: Colors.black12)
        )
      ),
      child: Wrap(
        spacing: 10,
        children: model.items.map((item) {
          return CommonGridCellWidget(model: item,descButton: model.descButton2,);
        }).toList(),
      ),
    );
  }

  //换一换
  Widget _changeRcmdList(BuildContext context) {
    return InkWell(
      onTap: () {
        print('换一换');
        Provider.of<ChannelProvider>(context,listen: false).getChannelSquareList();
      },
      child: Container(
        padding: EdgeInsets.only(top: 10,bottom: 10),
        width: ScreenUtil().setWidth(375),
        alignment: Alignment.center,
        color: Colors.white,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('换一换',style: TextStyle(color: Colors.pink[300]),),
            SizedBox(width: 5,),
            Icon(IconData(0xe60a, fontFamily: "appIconFonts",),color: Colors.pink[300],size: 15,),
          ],
        ),
      ),
    );
  }
}
