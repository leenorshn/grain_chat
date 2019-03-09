import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';

class ShortCallWidget extends StatelessWidget {
  final String userImage;
  final String callType;

  const ShortCallWidget({Key key, this.userImage, this.callType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 68.0,
      margin: EdgeInsets.only(left:8.0,right: 4.0, top: 4.0,bottom: 4.0),
      child: Stack(
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage(
              userImage,
            ),
            radius: 26.0,
          ),
          Positioned(
            left: 40.0,
            top: 30.0,
            child: callType == "call"
                ? CircleAvatar(
                    radius: 10.0,
                    backgroundColor: accentColor,
                    child: Icon(
                      Icons.call,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  )
                : CircleAvatar(
                    radius: 15.0,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.call_end,
                      color: Colors.white,
                      size: 20.0,
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
