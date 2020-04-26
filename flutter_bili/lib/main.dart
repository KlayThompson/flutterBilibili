import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/index.dart';
import 'package:flutter_bili/provider/home_common_provider.dart';
import 'package:provider/provider.dart';

void main() {
  var homeCommonProvider = HomeCommonProvider();
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider.value(value: homeCommonProvider),
    ],
    child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor:Colors.pink[300],
      ),
      home: IndexPage(),
    );
  }
}

