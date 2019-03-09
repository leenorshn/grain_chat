import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';
import 'package:grain_chat/ui/widget/call_item_widget.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        title: Text("Calls",style: appbarTitleStyle,),
        actions: <Widget>[
          Icon(Icons.settings,color: accentColor,size: 25.0,),
          Icon(Icons.more_vert,color: accentColor,),
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
            itemBuilder: (context,index){
             return CallItemWidget(
               userImage: "images/mapenzi.jpg",
               userName: "Victor",
               date: "12:34",
               type: "voice",
             );
        },),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_call,color: Colors.white,),
        onPressed: (){},),
    );
  }
}

