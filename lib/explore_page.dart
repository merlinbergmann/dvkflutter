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
          HeroCard(),
          ListTitle('Just Added'),
          HorizontalList(),
          ListTitle('Mathemagic'),
          HorizontalList(),
          ListTitle('Top Shows'),
          HorizontalList(),
          ListTitle('Sports & Leisure'),
          HorizontalList(),
          ListTitle('Categories'),
          HorizontalList(),
        ],
      ),
    );
  }
}

class ListTitle extends StatelessWidget {
  ListTitle(this.listTitle);
  final String listTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(listTitle),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.red,
      ),
    );
  }
}

class HeroCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 8.0,
      ),
      elevation: 0,
      color: Colors.transparent,
      child: Column(
        children: <Widget>[
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  child: Image.asset('images/WIGU.jpg')),
              Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(20.0))),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          ListTile(
            contentPadding: EdgeInsets.only(left: 0.0, right: 20.0),
            title: Text('The Enchanted Nightingale'),
            subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
          )
        ],
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          HorizontalListTile('WIGU'),
          HorizontalListTile('WIGU'),
          HorizontalListTile('WIGU'),
          HorizontalListTile('WIGU'),
          HorizontalListTile('WIGU'),
          HorizontalListTile('WIGU'),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}

class HorizontalListTile extends StatelessWidget {
  HorizontalListTile(this.txID);

  final String txID;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        width: 224.0,
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          child: Wrap(
            children: <Widget>[
              Stack(
                alignment: AlignmentDirectional.bottomStart,
                children: <Widget>[
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(20.0)),
                    child: Image.asset('images/$txID.jpg'),
                  ),
                  Container(
                    width: 32.0,
                    height: 32.0,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(20.0))),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              ListTile(
                contentPadding: EdgeInsets.only(
                  left: 0.0,
                  right: 20.0,
                ),
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
