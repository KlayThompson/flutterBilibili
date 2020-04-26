import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bili/provider/live_provider.dart';

class LivePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _getLiveAllList(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Consumer<LiveProvider>(
                builder: (context, provider, child) {
                  return Container(child: Center(child: Text('text'),),);
                }
            );
          } else {
            return CircularProgressIndicator();
          }
        }
    );
  }

  Future _getLiveAllList(BuildContext context) async{
    await Provider.of<LiveProvider>(context,listen: false).getHomeLiveAllList();
    return 'ok';
  }
}
