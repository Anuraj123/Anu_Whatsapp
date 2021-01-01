import 'faltu.dart';
import 'package:flutter/material.dart';
class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        height: 503.0,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: <Widget>[
                  chatting(
                    name: 'Kishore Kumar',
                    details: 'Pagal',
                    image: 'kishore',
                  ),
                  underline(),
                  chatting(
                    name: 'Manoj Kumar',
                    details: 'Bharat Kumar',
                    image: 'manojkumar',
                  ),
                  underline(),
                  chatting(
                    name: 'Dharmendra',
                    details: 'Muscle Man',
                    image: 'dharmendra',
                  ),
                  underline(),
                  chatting(
                    name: 'Shashi Kapoor',
                    details: 'Younger',
                    image: 'shashi',

                  ),
                  underline(),
                  chatting(
                    name: 'devanand',
                    details: 'What is old',
                    image: 'devanand',
                  ),
                  underline(),
                  chatting(
                    name: 'Raj Kapoor',
                    details: 'Joker',
                    image: 'rajkapoor',
                  ),
                  underline(),
                  chatting(
                    name: 'Shammi Kapoor',
                    details: 'Dancer',
                    image: 'shammi',
                  ),
                  underline(),
                  chatting(
                    name: 'Mohommad Rafi',
                    details: 'Melody King',
                    image: 'rafi',
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.message),
      ),
    );

  }
}
