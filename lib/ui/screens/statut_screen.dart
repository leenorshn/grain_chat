import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';
import 'package:grain_chat/ui/widget/statut_item_widget.dart';

class StatutScreen extends StatefulWidget {
  @override
  _StatutScreenState createState() => _StatutScreenState();
}

class _StatutScreenState extends State<StatutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text(
          "Status",
          style: appbarTitleStyle,
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: accentColor,
            size: 25.0,
          ),
          Icon(
            Icons.more_vert,
            color: accentColor,
          )
        ],
      ),
      body: Container(
        child: ListView(
          shrinkWrap: false,
          primary: true,
          children: <Widget>[
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("images/karl.jpg"),
                ),
                title: Text(
                  "Mon Statut",
                  style: chatItemNoLitNameStyle,
                ),
                subtitle: Text(
                  "hier 12:21",
                  style: chatItemLitNameStyle,
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  color: accentColor,
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Text(
                "Recent Statuts".toUpperCase(),
                style: textSeparationInList,
              ),
            ),
            Container(
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return StatutItemWidget(
                    name: "User name",
                    userImage: "images/karl.jpg",
                    date: "to day 12:24",
                  );
                },
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add_to_photos,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
