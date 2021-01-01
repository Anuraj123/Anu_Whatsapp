import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'nav_ser.dart';
import 'locater.dart';
class Settings extends StatelessWidget {
  @override
  //final NavigationService _navigationService = locator<NavigationService>();
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),

      ),
      body: Container(
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
          ],
        ),
      ),
    );
  }
}
