import 'package:flutter/material.dart';
import 'package:flutter_bili/provider/vip_store_provider.dart';
import 'package:flutter_bili/widget/first_loading.dart';
import 'package:provider/provider.dart';

class VipStore extends StatefulWidget {
  @override
  _VipStoreState createState() => _VipStoreState();
}

class _VipStoreState extends State<VipStore> {

  var _futureBuilderFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _futureBuilderFuture = _getVipStoreData(context);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _futureBuilderFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Consumer<VipStoreProvider>(
              builder: (context,provider,_) {
                return Container(
                  color: Color(0xfff4f4f4),
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      titleSpacing: 0,
                      elevation: 0,
                      brightness: Brightness.light,
                      title: Text('会员购', style: TextStyle(color: Color(0xff444444), fontSize: 18),),
                    ),
                    body: ListView(
                      children: <Widget>[
                        Text(provider.dataModel.message),
                      ],
                    ),
                  ),
                );
              }
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              titleSpacing: 0,
              elevation: 0,
              brightness: Brightness.light,
              title: Text('会员购', style: TextStyle(color: Color(0xff444444), fontSize: 18),),
            ),
            body: FirstLoadingWidget(),
          );
        }
      },
    );
  }

  Future _getVipStoreData(BuildContext context) async {
    await Provider.of<VipStoreProvider>(context,listen: false).getVipStoreData();
    return 'ok';
  }
}
