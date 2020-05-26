import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bili/pages/index.dart';
import 'package:flutter_bili/provider/providr_setup.dart';
import 'package:flutter_bili/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  final router = Router();
  Routes.configureRoutes(router);
  Routes.router = router;

  runApp(MultiProvider(
    providers: providers,
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        primaryColor: Colors.pink[300],
      ),
      home: IndexPage(),
    );
  }
}
