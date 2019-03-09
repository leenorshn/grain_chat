import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';

class StatutItemWidget extends StatelessWidget {
  final String name;
  final String date;
  final String userImage;

  const StatutItemWidget({Key key, this.name, this.date, this.userImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:70.0),
            child: Divider(),
          ),
          ListTile(
            title: Text(
              "$name",
              style: chatItemNoLitNameStyle,
            ),
            subtitle: Text("$date",style: chatItemLitNameStyle,),
            leading: CircleAvatar(
              radius: 27.0,
              backgroundImage: AssetImage("$userImage"),
            ),
          ),
        ],
      ),
    );
  }
}
