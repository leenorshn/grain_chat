import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';
import 'package:grain_chat/ui/widget/chat_item_widget.dart';
import 'package:grain_chat/ui/widget/short_call_widget.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text(
          "Chats",
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
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                top: 8.0
              ),
              child: Text(
                "RECENT CALLS",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              height: 80.0,
              child: ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ShortCallWidget(
                    userImage: "images/karl.jpg",
                    callType: "call",
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Text(
                "RECENT CHATS",
                style:textSeparationInList
              ),
            ),
            Container(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return ChatItemWidget(
                      userName: "victor",
                      date: "12:35",
                      userImage: "images/karl.jpg",
                      message: "la modernite de tout pour mettre",
                      nombreMessage: "12",
                    );
                  },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
