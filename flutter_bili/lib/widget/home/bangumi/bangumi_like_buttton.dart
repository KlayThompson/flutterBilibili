import 'package:flutter/material.dart';

class BangumiLikeButtonWidget extends StatelessWidget {
  final int oid;//根据oid进行追番和取消追番操作
  BangumiLikeButtonWidget(this.oid);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: 25,
        height: 25,
        decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.5),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(5),bottomRight: Radius.circular(5))
        ),
        child: Icon(IconData(0xe667, fontFamily: "appIconFonts"),color: Colors.white,),
      ),
    );
  }
}
