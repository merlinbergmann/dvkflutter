import 'package:flutter/material.dart';

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
