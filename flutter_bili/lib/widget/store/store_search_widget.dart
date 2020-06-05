import 'package:flutter/material.dart';
import 'package:flutter_bili/model/vip_store/vip_store_model.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StoreSearchWidget extends StatelessWidget {
  final StoreCardItemData data;
  StoreSearchWidget(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(375),
      padding: EdgeInsets.all(14),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: Color(0xfff4f4f4),
              borderRadius: BorderRadius.all(Radius.circular(18))
          ),
          height: 36,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(IconData(0xe601, fontFamily: "appIconFonts"),size: 13,),
              SizedBox(width: 10,),
              Text(this.data.title, style: TextStyle(color: Color(0xff777777)),),
            ],
          ),
        ),
      ),
    );
  }
}
