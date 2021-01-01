import 'package:flutter/material.dart';
class Chating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          CircleAvatar(
            radius: 10.0,
          ),
          FlatButton(
            child: Text('name'),
          )
        ],
      ),
    );
  }
}
