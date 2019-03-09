import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';

class CallItemWidget extends StatelessWidget {
  final String userImage;
  final String userName;
  final String date;
  final String type;

  const CallItemWidget({
    Key key,
    this.userImage,
    this.userName,
    this.date,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:60.0),
            child: Divider(),
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 28.0,
              backgroundImage: AssetImage(userImage),
            ),
            title: Text("$userName",style: chatItemNoLitNameStyle,),
            subtitle: Text("$date",style: chatItemLitNameStyle,),
            trailing: type=="voice"?Icon(Icons.call,color: accentColor,):Icon(Icons.videocam,color: accentColor,),
          ),
        ],
      ),
    );
  }
}
