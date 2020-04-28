import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_live_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActivityCardWidget extends StatelessWidget {
  final List<ActivityCardV2List> list;
  ActivityCardWidget(this.list);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(70),
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black12),
          borderRadius: BorderRadius.circular(5)),
      child: _detailRow(),
    );
  }

  Widget _detailRow() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: <Widget>[
          Expanded(
            child: Image.network(
              list[0].logoUrl,
              fit: BoxFit.fill,
            ),
            flex: 1,
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: _centerText(),
                  flex: 3,
                ),
                Expanded(
                  child: _rightButton(),
                  flex: 1,
                )
              ],
            ),
            flex: 4,
          )
        ],
      ),
    );
  }

  Widget _centerText() {
    return Padding(
      padding: EdgeInsets.only(left: 5, right: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            list[0].title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(13), color: Color(0xff444444)),
          ),
          Text(
            list[0].timeText,
            style: TextStyle(
                fontSize: ScreenUtil().setSp(11), color: Color(0xff777777)),
          )
        ],
      ),
    );
  }

  Widget _rightButton() {
    return InkWell(
      onTap: () {},
        child: Container(
          margin: EdgeInsets.only(right: 10),
          height: ScreenUtil().setHeight(30),
          decoration: BoxDecoration(
              color: Colors.pink[300], borderRadius: BorderRadius.circular(4)),
          child: Center(
            child: Text(
              list[0].buttonText,
              style:
              TextStyle(fontSize: ScreenUtil().setSp(14), color: Colors.white),
            ),
          ),
        ),
    );
  }
}
