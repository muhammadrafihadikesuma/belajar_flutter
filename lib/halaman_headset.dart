import 'package:flutter/material.dart';

class HalamanHeadset extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _HalamanHeadset();
}

class _HalamanHeadset extends State<HalamanHeadset> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
        appBar: new AppBar(
            backgroundColor: Color.fromRGBO(54, 130, 218, 1),
            title: new Text("Halaman Headset")),
        body: new Container(
            child: new Center(
                child: new Column(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.all(20.0),
            ),
            new Text(
              "Halaman Headset",
              style: new TextStyle(fontSize: 20.0),
            ),
          ],
        ))));
  }
}
