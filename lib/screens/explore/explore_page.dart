import 'package:flutter/material.dart';
import 'for_you_page.dart';

class ExplorePage extends StatefulWidget {
  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        color: Colors.white,
        child: SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Center(
                child: Image.asset(
                  'images/davincilogo.png',
                  height: 24.0,
                ),
              ),
              actions: <Widget>[
                IconButton(
                    icon: Icon(Icons.search), iconSize: 40.0, onPressed: null)
              ],
              bottom: TabBar(
                labelStyle:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                labelColor: Colors.black,
                indicatorColor: Colors.red,
                indicatorWeight: 5.0,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(text: 'FOR YOU'),
                  Tab(text: 'SHOWS'),
                  Tab(text: 'QUIZZES'),
                  Tab(text: 'GAMES')
                ],
              ),
            ),
            body: TabBarView(children: [
              ForYouPage(),
              Icon(Icons.ondemand_video),
              Icon(Icons.format_list_numbered_rtl),
              Icon(Icons.videogame_asset)
            ]),
          ),
        ),
      ),
    );
  }
}
