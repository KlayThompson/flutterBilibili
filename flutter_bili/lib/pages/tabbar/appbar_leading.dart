import 'package:flutter/material.dart';
import 'package:flutter_bili/model/app_config_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarLeadingWidget extends StatelessWidget {

  final AvatarConfig config;
  AppBarLeadingWidget({this.config});

  @override
  Widget build(BuildContext context) {
    return Container(
//      color: Colors.deepPurple,
    padding: EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              _avatar(),
              SizedBox(width: 16,),
              _titleSearch()
            ],
          ),
        ],
      ),
    );
  }

  Widget _avatar() {
    return Container(
//      padding: EdgeInsets.all(5),
//      margin: EdgeInsets.only(left: 15),
      child: CircleAvatar(
        backgroundImage: NetworkImage(
          config.noLoginAvatar,
        ),
      ),
    );
  }

  Widget _titleSearch() {
    return Container(
      height: 34,
      width: ScreenUtil().setWidth(218),
      decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.circular(19)
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(IconData(0xe601, fontFamily: "appIconFonts"),size: 13,),
            border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    );
  }
}
