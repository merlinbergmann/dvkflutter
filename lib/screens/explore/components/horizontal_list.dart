import 'package:flutter/material.dart';
import 'horizontal_list_tile.dart';

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
