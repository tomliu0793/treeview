import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'groupWidgt.dart';
import 'home_sc.dart';
import 'pie.dart';
import 'dart:html';
import 'draw_screen.dart';
import 'compent/root.dart';
import 'home.dart';

void main() {
  window.document.onContextMenu.listen((evt) => evt.preventDefault());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'NotoSansSC',
        primarySwatch: Colors.blueGrey,
      ),
      home: HomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var gp = GroupViewWidget(
      itemModel: ItemModel(
          icon: '', rank: '1', name: '简书', description: '创造你的创造', type: '文学创造'),
      onPressed: () {},
    );
    var pie = WheelWidget();
    var item = RootItemModel(content: "root");
    var root = RootItemWidget(
      itemModel: item,
    );
    var ti = TextField(
      onSubmitted: (value) {
        print(value);
      },
    );
    var sta = new Stack(
      children: [
        Positioned(child: ti, left: 100, top: 100, width: 200, height: 60),
        // Positioned(child: pie, left: 200, top: 200),
        Positioned(child: root, left: 400, top: 400)
      ],
    );

    return Scaffold(
      body: sta,
    );
  }
}
