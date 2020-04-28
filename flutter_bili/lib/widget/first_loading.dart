import 'package:flutter/material.dart';

class FirstLoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset('images/ic_loading.png'),
      ),
    );
  }
}
