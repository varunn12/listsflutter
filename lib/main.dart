import 'package:flutter/material.dart';

import 'grid_list.dart';
import 'horizontal.dart';
import 'multi_item_list.dart';

void main() => runApp(new MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Lists';

    return  new Scaffold(
        appBar: new AppBar(
          title: new Text(title),
        ),
        body: new Container(
          margin: new EdgeInsets.symmetric(vertical: 20.0),
          height: 200.0,
          child: new ListView(
            padding: new EdgeInsets.all(16.0),
            scrollDirection: Axis.vertical,
            children: <Widget>[
              new OutlineButton(
                child: const Text('Horizontal List'),
                onPressed: ()=>Navigator.push(context, new MaterialPageRoute(builder: (context)=>new HorizontalApp())),
              ),
              new OutlineButton(
                child: const Text('Grid List'),
                onPressed: ()=>Navigator.push(context, new MaterialPageRoute(builder: (context)=>new GridList())),
              ),
              new OutlineButton(
                child: const Text('Multi Item List'),
                onPressed: ()=>Navigator.push(context, 
                new MaterialPageRoute(builder: (context)=>new MultiItemList())),
              )
            ],
          ),
        ),
    );
  }
}