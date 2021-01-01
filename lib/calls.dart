import 'package:flutter/material.dart';
class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
            children: <Widget>[
              /*Column(
    children: <Widget>[
    AppBar(
    title:Text('WhatsApp'),
    backgroundColor: Color(0xFF075e54),
    ),
    ],
    ),
    Container(

    color: Color(0xFF075e54),
    child: Row(
    children: <Widget>[
      iconvaale(context,colr: 0xFF71A49E),
      textvaale(context,colr: 0xFF71A49E,heading: 'CHATS',function: ChoiceCard()),
      textvaale(context,colr: 0xFF71A49E,heading: 'STATUS',function: Status()),
      textvaale(context,colr: 0xFFFFFFFF,heading: 'CALLS',function: Calls()),
],
),
),*/
              Container(

                child: Center(child: Text('Calls'),),
              )
            ],
          )
      ),

    );
  }
}
