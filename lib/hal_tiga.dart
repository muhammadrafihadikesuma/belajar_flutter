import 'package:flutter/material.dart';

class Tiga extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child:new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Radio", style: new TextStyle(fontSize: 20.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.radio, size: 100.0,)
          ],
        )
      )

    );
  }
}