import 'package:flutter/material.dart';
import 'package:flutter_bili/model/home_bangumi_model.dart';
import 'package:flutter_bili/routes/routes.dart';

import 'bangumi_top_header_title.dart';

class BangumiFlowTagWidget extends StatelessWidget {

  final BangumiModules modules;
  BangumiFlowTagWidget(this.modules);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 0.5,color: Colors.black12),
          )
      ),
      child: Column(
        children: <Widget>[
          BangumiTopHeaderTitleWidget(title: modules.title),
          _tagWrapWidget(context)
        ],
      ),
    );
  }

  Widget _tagWrapWidget(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(13, 5, 13, 20),
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 15,
        runSpacing: 13,
        runAlignment: WrapAlignment.start,
        crossAxisAlignment: WrapCrossAlignment.start,
        children: modules.items.map((val){
          return _singleTag(context, val);
        }).toList(),
      ),
    );
  }

  Widget _singleTag(BuildContext context,BangumiModuleItem item) {
    return InkWell(
      onTap: () {
        if (item.link.startsWith('https://')) {
          Routes.navigateTo(context, Routes.webView,params: {'title': item.title,'url': item.link});
        } else {
          print('need create page');
        }
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xfff4f4f4),
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        padding: EdgeInsets.fromLTRB(15, 7, 15, 7),
        child: Text(item.title,style: TextStyle(color: Color(0xff777777),fontSize: 13),),
      ),
    );
  }
}
