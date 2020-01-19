import 'package:flutter/material.dart';
import 'components/hero_card.dart';
import 'components/horizontal_list.dart';
import 'components/list_title.dart';

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
