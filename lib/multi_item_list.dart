import 'package:flutter/material.dart';

//Base class for the different types of items the list can contain
abstract class ListItem{

}

// A listitem that contain data to display  a heading
class HeadingItem implements ListItem{
final String heading;

HeadingItem(this.heading);

}


//A Listitem that contain data to display a message
class MessageItem implements ListItem{
  final String message;
  final String sender;

  MessageItem(this.message, this.sender);

}

final items=new List<ListItem>.generate(1200, 
(i) => i % 5 == 0 ? new HeadingItem("Heading $i"): new MessageItem("message $i", "sender $i"),
);


class MultiItemList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
          body: new Container(
        child: new ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index){

            final item=items[index];
            if(item is HeadingItem){
              return new Column(
                children: <Widget>[
                  new ListTile(
                    title: new Text(
                      item.heading,
                      style: Theme.of(context).textTheme.headline,
                    ),
                  ),
                  new Image(
                    image: NetworkImage("https://cdn.dribbble.com/users/68773/screenshots/1369596/mobile-app-chat-logo_1x.jpg"),
                  )],
              );

            }
            else if(item is MessageItem){
              return new ListTile(
                title: new Text(item.message,
                style: Theme.of(context).textTheme.subhead,),
                subtitle: new Text(item.sender),
              );

            }
          },
        ),
      ),
    );
  }
}