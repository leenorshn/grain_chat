import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';

class ChatItemWidget extends StatelessWidget {
  final String userImage;
  final String userName;
  final String message;
  final String date;
  final String nombreMessage;

  const ChatItemWidget(
      {Key key,
      this.userImage,
      this.userName,
      this.message,
      this.date,
      this.nombreMessage})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
      child: Container(
        height: 80.0,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Divider(
              height: 0.0,
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage("$userImage"),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 3 + 70,
                              child: Text(
                                "$userName",
                                overflow: TextOverflow.ellipsis,
                                style: chatItemNoLitNameStyle,
                              ),
                            ),
                            Text(
                              "$date",
                              style: chatItemNotLitdateStyle,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                width:
                                    MediaQuery.of(context).size.width / 3 + 100,
                                child: Text(
                                  "$message",
                                  overflow: TextOverflow.ellipsis,
                                  style: chatItemLitMessageStyle,
                                ),
                            ),
                            Material(
                              type: MaterialType.circle,
                              elevation: 2.0,
                              color: Color(0XFF25D366),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "$nombreMessage",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: primaryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
