import 'package:flutter/material.dart';

import 'package:belajar_flutter/hal_satu.dart' as Headset;
import 'package:belajar_flutter/hal_dua.dart' as Komputer;
import 'package:belajar_flutter/hal_tiga.dart' as Radio;
import 'package:belajar_flutter/hal_empat.dart' as Smartphone;

//import halaman
import './halaman_headset.dart';

void main() {
  runApp(new MaterialApp(
    title: "Aplikasi Pertama",
    home: new HalamanSatu(),
    routes: <String, WidgetBuilder>{
      '/hal_satu': (BuildContext context) => new Headset.Satu(),
      '/hal_dua': (BuildContext context) => new Komputer.Dua(),
      '/hal_tiga': (BuildContext context) => new Radio.Tiga(),
      '/hal_empat': (BuildContext context) => new Smartphone.Empat(),
    },
  ));
}

class HalamanSatu extends StatefulWidget {
  @override
  _HalamanSatuState createState() => new _HalamanSatuState();
}

class _HalamanSatuState extends State<HalamanSatu>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red[900],
        leading: Icon(Icons.home),
        title: new Text("BELAJAR FLUTTER"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          new PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: GestureDetector(
                      onTap: () {
                        print("Headset Clicked.");
                        //navigator.pop ini untuk close popupmenu ketik di klik
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              //karena ini popupmenu, maka akan seperti popup transisinya
                              builder: (context) => HalamanHeadset()),
                        );
                      },
                      child: new Row(
                        children: <Widget>[
                          Expanded(
                            child: new Text("Headset"),
                          )
                        ],
                      )),
                ),
                PopupMenuItem(child: Text('Komputer')),
                PopupMenuItem(child: Text('Radio')),
                PopupMenuItem(child: Text('Smartphone'))
              ];
            },
          )
        ],
        bottom: new TabBar(
          controller: controller,
          tabs: <Widget>[
            new Tab(
              icon: new Icon(Icons.headset),
              text: "Headset",
            ),
            new Tab(
              icon: new Icon(Icons.computer),
              text: "Komputer",
            ),
            new Tab(
              icon: new Icon(Icons.radio),
              text: "Radio",
            ),
            new Tab(
              icon: new Icon(Icons.smartphone),
              text: "HP",
            ),
          ],
        ),
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new Headset.Satu(),
          new Komputer.Dua(),
          new Radio.Tiga(),
          new Smartphone.Empat()
        ],
      ),
    );
  }
}
