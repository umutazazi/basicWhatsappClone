import 'package:deneme1/screens/calls_screen.dart';
import 'package:deneme1/screens/chat_screen.dart';
import 'package:deneme1/screens/status_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

TabController? _tabController;

class _HomeState extends State with SingleTickerProviderStateMixin {
  @override
  void initState() {
    _tabController = TabController(length: 4,initialIndex: 1, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text("Whatsapp"),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
            icon: Icon(Icons.camera_alt),
            ),
            Tab(text: "SOHBETLER",),
            Tab(text: "DURUM"),
            Tab(text: "ARAMALAR"),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Icon(Icons.search,),
          ),
          Padding(
            padding: const EdgeInsets.only(right:7.0),
            child: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Camera"),
          ChatScreen(),
          StatusScreen(),
          CallsScreen(),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("Sohbet Ekranı"),


        
        
        ),
    );
  }
}
