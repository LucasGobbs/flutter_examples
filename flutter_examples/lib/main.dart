import 'package:flutter/material.dart';
import 'package:flutter_examples/app/homescreen/homescreen.dart';
import 'package:flutter_examples/router.gr.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: Router.homeScreen,
                              
      onGenerateRoute: Router.onGenerateRoute,
      navigatorKey: Router.navigatorKey,
    );
  }
}
