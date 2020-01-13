import 'package:flutter/material.dart';

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

class ForYouPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          HeroContent(),
          HorizontalList(),
          HorizontalList(),
          HorizontalList(),
          HorizontalList(),
          HorizontalList(),
          HorizontalList(),
        ],
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20.0,
        top: 20.0,
      ),
      child: Container(
        height: 230.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            HorizontalListTile(Colors.lightBlue),
            HorizontalListTile(Colors.green),
            HorizontalListTile(Colors.yellow),
            HorizontalListTile(Colors.teal),
            HorizontalListTile(Colors.orange),
            HorizontalListTile(Colors.pink),
          ],
        ),
      ),
    );
  }
}

class HorizontalListTile extends StatelessWidget {
  HorizontalListTile(this.color);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        width: 224.0,
        child: Card(
          elevation: 0,
          child: Wrap(
            children: <Widget>[
              Image.asset('images/WIGU.jpg'),
              ListTile(
                title: Text('When I grow up'),
                subtitle: Text('This is going to be fun!'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class HeroContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0),
              ),
            ),
            height: 192.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Episode Title in one line',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          Text(
            'EPG for this episode in one very long line',
            style: TextStyle(fontSize: 16.0, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
