import 'package:flutter/material.dart';
import 'package:flutter_bili/model/channel/channel_square_model.dart';
import 'package:flutter_bili/widget/common/common_nav5.dart';
import 'package:flutter_bili/widget/common/common_section_header.dart';

class ChannelHotWidget extends StatelessWidget {
  final ChannelSquareData data;
  ChannelHotWidget(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CommonSectionHeaderWidget(title: data.label,subTitle: '换一换',hideRight: false,rightIcon: IconData(0xe60a, fontFamily: "appIconFonts"),),
          CommonNav5Widget(simpleItems: data.rcmItems.list,)
        ],
      ),
    );
  }
}
