// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:antidote/widgets/notificationbody.dart';
import 'package:flutter/material.dart';

class newlist extends StatelessWidget {
  const newlist(
      {super.key,
      required this.title,
      required this.body,
      required this.priority,
      required this.links,
      required this.source});
  final String title, body, priority, links, source;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        elevation: 5.0,
        margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              leading: Container(
                padding: EdgeInsets.only(right: 12.0),
                decoration: new BoxDecoration(
                    border: new Border(
                        right:
                            new BorderSide(width: 1.0, color: Colors.white24))),
                child:
                    Icon(Icons.notifications_none_rounded, color: Colors.blue),
              ),
              title: Text(
                "$title ",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),

              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Container(
                      width: 7,
                      height: 7,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text("Important",
                          style: TextStyle(color: Colors.black)),
                    )
                  ],
                ),
              ),
              trailing: Icon(Icons.keyboard_arrow_right,
                  color: Colors.black, size: 30.0)),
        ),
      ),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationBody(
                  titleBody: title,
                  bodyBody: body,
                  linkBody: links,
                  sourceBody: source,
                )));
      },
    );
  }
}
