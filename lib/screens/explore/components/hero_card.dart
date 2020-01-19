import 'package:flutter/material.dart';

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
