import 'package:flutter/material.dart';

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
