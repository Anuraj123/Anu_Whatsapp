import 'package:flutter/material.dart';
import 'chatting.dart';
import 'camera.dart';
Container chatting({ context,String name,String details,String image}) {
  return Container(
    child: Container(
      height: 70.0,
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left:10.0),
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 30.0,
              child: GestureDetector(
                onTap: (){
                  print('hello');
                },
                child: ClipOval(
                  child: Container(

                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/$image.jpg'),
                          fit: BoxFit.fitHeight,
                        )
                    ),
                  ),
                ),
              ),
            ),
          ),
          FlatButton(
            onPressed: (){
              print('text');
              Navigator.push<void>(
                context,
                MaterialPageRoute(builder: (context) => Chating()),
              );
            },
            child: Container(
              width: 255.0,
              padding: EdgeInsets.only(left:17.0,top: 15.0),
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        alignment:Alignment.topLeft,
                        child: Text('$name',
                          textAlign:TextAlign.left,
                          style: TextStyle(
fontWeight: FontWeight.bold,

                          fontSize: 17.0,
                        ),),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('$details',style: TextStyle(
                          color: Colors.grey,
                          fontSize: 17.0,
                        ),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
Container underline() {
  return Container(
    child: Row(
      children: <Widget>[
        Container(
          height: 0.5,
          width:87.0,
          color: Colors.transparent,
        ),

        Container(
          height: 0.5,
          width:260,
          color:Colors.grey[500],
        ),
        SizedBox(
          height: 1.0,
          width:10,
        ),
      ],
    ),
  );
}
Container updates({String given}) {
  return Container(
    child: Row(
      children: <Widget>[
        Container(
          height: 25.0,
          width:360.0,
          decoration: BoxDecoration(
            border:Border.all(color: Colors.grey[350],
              width:1.0,
            ),
            color: Colors.grey[300],),

          child: Padding(
            padding: const EdgeInsets.only(left: 17.0,top: 4.0,bottom: 4.0),
            child: Text('$given Updates',style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[700],
            ),),
          ),
        ),
      ],
    ),
  );
}
/*Container mystatus() {
  return Container(
    height: 70.0,
    child: Row(

      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left:17.0),
          child: CircleAvatar(
            radius: 30.0,
            child: GestureDetector(
              onTap: (){},
              child: ClipOval(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage('https://images.unsplash.com/photo-1541423408854-5df732b6f6d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1950&q=80'),
                        fit: BoxFit.fitHeight,
                      )
                  )
                  ,
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left:17.0,top: 15.0),
          child: Column(
            children: <Widget>[
              Text('dfyghjvhvhhvgh',style: TextStyle(
                fontSize: 15.0,

              ),),
              SizedBox(
                height: 5.0,
              ),
              Text('dfyghjvhvhhvgh'),
            ],
          ),
        ),
      ],
    ),
  );
}*/
Expanded iconvaale(BuildContext context,{int colr}) {
  return Expanded(
    flex: 1,
    child: FlatButton(

      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Icon(
        Icons.camera_alt,
        color: Color(colr),
      ),
      color: Color(0xFF075e54),

      onPressed: () {
        Navigator.push<void>(
          context,
          MaterialPageRoute(builder: (context) => Camera()),
        );
      },
    ),
  );
}
Expanded textvaale(BuildContext context,{String heading,int colr, function}) {
  return Expanded(
    flex: 3,
    child: FlatButton(
      padding: EdgeInsets.symmetric(vertical: 14.0),
      child: Text(
        '$heading',
        style: TextStyle(
          color: Color(colr),
        ),
      ),
      color: Color(0xFF075e54),
      onPressed: () {
        print('hello');
        Navigator.push<void>(
          context,
          MaterialPageRoute(builder: (context) => function),
        );
      },
    ),
  );
}
