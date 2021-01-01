import 'package:flutter/cupertino.dart';
import 'faltu.dart';
import 'package:flutter/material.dart';
class Status extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          children: <Widget>[
            /* Column(
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
                    textvaale(context,colr: 0xFFFFFFFF,heading: 'STATUS',function: Status()),
                    textvaale(context,colr: 0xFF71A49E,heading: 'CALLS',function: Calls()),
                  ],
                ),
              ),*/
            Container(
              height: 503.0,
              child: ListView(
                scrollDirection: Axis.vertical,
                children:<Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 70.0,
                          child: Row(
                            children: <Widget>[
                              Stack(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(left: 17.0,bottom: 10.0),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      child: GestureDetector(
                                        onTap: (){},
                                        child: ClipOval(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image:AssetImage('assets/images/anuraj1.jpg'),
                                                  fit: BoxFit.fitHeight,
                                                )
                                            )
                                            ,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 55.0,
                                    top: 43.0,
                                    child: CircleAvatar(

                                      radius: 10.0,
                                      backgroundColor: Colors.green,
                                      child: Icon(Icons.add,size: 17.0,
                                        color: Colors.white,),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(left:17.0,top: 15.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      child: Column(

                                        children: <Widget>[
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            child: Text('My Status',style: TextStyle(
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Container(
                                              alignment: Alignment.centerLeft,
                                              child: Text('Tap to add status update',style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 16.0,
                                              ),),),
                                        ],
                                      ),
                                    ),

                                  ],

                                ),

                              ),

                            ],
                          ),
                        ),
                        updates(
                          given: 'Recent',
                        ),
                        chatting(
                          name: 'Kishore Kumar',
                          details: 'Today, 5:0 am',
                          image: 'kishore',
                        ),
                        underline(),
                        chatting(
                          name: 'DevAnand',
                          details: 'Today, 6:12 pm',
                          image: 'devanand',
                        ),
                        updates(
                          given: 'Viewed',
                        ),
                        chatting(
                          name: 'Shashi Kapoor',
                          details: 'Yesterday, 9:00 pm',
                          image: 'shashi',
                        ),
                        underline(),
                        chatting(
                          name: 'Manoj Kumar',
                          details: 'Today, 12:15 am',
                          image: 'manojkumar',
                        ),
                        underline(),
                        chatting(
                          name: 'Raj Kapoor',
                          details: 'Today, 10:00 am',
                          image: 'rajkapoor',
                        ),

                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: Column(

        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            height: 40.0,
            width: 40.0,
            decoration: BoxDecoration(

              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: FloatingActionButton(
              heroTag: "btn1",
              mini: true,
              backgroundColor: Colors.white60,

              child: Icon(Icons.create,color: Color(0xFF075e54),),
            ),
          ),
          SizedBox(height: 15.0,),
          FloatingActionButton(
            heroTag: "btn2",
            backgroundColor: Colors.green,
            child: Icon(Icons.camera_alt),),
        ],
      ),
    );
  }
}
