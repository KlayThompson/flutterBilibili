import 'package:flutter/material.dart';

class ChannelSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      color: Colors.white,
      alignment: Alignment.topLeft,
      height: 64,
      child: _titleSearch(),
    );
  }

  Widget _titleSearch() {
    return Container(
      height: 40,
      decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.circular(20)
      ),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            hintText: '搜索你感兴趣的频道',
            hintStyle: TextStyle(color: Colors.black26),
            prefixIcon: Icon(IconData(0xe601, fontFamily: "appIconFonts"),size: 13,),
            border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    );
  }
}
