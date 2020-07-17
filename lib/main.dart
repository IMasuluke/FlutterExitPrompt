import 'package:flutter/material.dart';
import 'package:flutterpromttoexit/components/screen_holder.dart';
import 'package:flutterpromttoexit/second_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScreenHolder(
      scaffoldKey: _scaffoldKey ,
      title: widget.title,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This is the first page',
            ),
          ],
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MySecondPage(title: "Second Page",))),
        tooltip: 'Navigate',
        child: Icon(Icons.navigate_next),
      ), // This trailing comma makes auto-format,
    );
  }
}
