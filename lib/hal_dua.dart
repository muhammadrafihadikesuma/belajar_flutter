import 'package:flutter/material.dart';

class Dua extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    return new Container(
      child: new Center(
        child:new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("Komputer", style: new TextStyle(fontSize: 20.0),),
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Icon(Icons.computer, size: 100.0,)
          ],
        )
      )

    );
  }
}