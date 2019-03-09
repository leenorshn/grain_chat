import 'package:flutter/material.dart';
import 'package:grain_chat/themes/themes.dart';
import 'package:grain_chat/ui/screens/call_screen.dart';
import 'package:grain_chat/ui/screens/chat_screen.dart';
import 'package:grain_chat/ui/screens/statut_screen.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  PageController _pageController;
  int page=0;

  @override
  void initState() {
    super.initState();
    _pageController=new PageController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white70,
        child: PageView(
          children: <Widget>[
            ChatScreen(),
            StatutScreen(),
            CallScreen()
          ],
          controller: _pageController,
          onPageChanged: onPageChanged,
        ),
      ),
      bottomNavigationBar: Material(
        elevation: 8.0,
        shadowColor: Colors.black,
        child: BottomNavigationBar(
          fixedColor: accentColor,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.forum), title: Text("chats")),
              BottomNavigationBarItem(icon: Icon(Icons.autorenew), title: Text("statuts")),
              BottomNavigationBarItem(icon: Icon(Icons.call), title: Text("calls")),
            ],
          onTap: navigationTapped,
          currentIndex: page,
        ),
      ),
    );
  }

  void navigationTapped(int page){
    _pageController.animateToPage(page, duration: Duration(microseconds: 300), curve: Curves.elasticIn);
  }

  void onPageChanged(int page){
    setState(() {
      this.page=page;
    });
  }
}
