import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'settings.dart';
import 'calls.dart';
import 'camera.dart';
import 'chats.dart';
import 'status.dart';
import 'locater.dart';
import 'nav_ser.dart';

void main() {
  setupLocator();
  runApp(Check());
}
class Check extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabbedAppBarSample();
  }
}
class TabbedAppBarSample extends StatefulWidget {
  @override
  _TabbedAppBarSampleState createState() => _TabbedAppBarSampleState();
}
int indexx = 1;
class _TabbedAppBarSampleState extends State<TabbedAppBarSample> with TickerProviderStateMixin{
  @override
  TabController tabController;
  @override

  void initState() {

    super.initState();
    {

    }
    tabController = TabController(vsync: this, length: 4);
  }

  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
  Widget build(BuildContext context) {
    return MaterialApp(

      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFF075e54),
            title: const Text('WhatsApp'),
            actions: <Widget>[
              Container(
                width: 45.0,
                child: Center(
                  child: FlatButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
PopupMenuButton<String>(
  onSelected: choiceActions,
  itemBuilder: (BuildContext context){
    if(indexx==0)
      {
        print('0');
        return Constants.choices.map((String choice){
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      }
    else if(indexx==1)
    {
      print('1');
      return Constants.choices1.map((String choice){
        return PopupMenuItem<String>(
          value: choice,
          child: Text(choice),
        );
      }).toList();
    }
    else if(indexx==2)
    {
      print('2');
      return Constants.choices2.map((String choice){
        return PopupMenuItem<String>(
          value: choice,
          child: Text(choice),
        );
      }).toList();
    }
    else if(indexx==3)
    {
      print('3');
      return Constants.choices3.map((String choice){
        return PopupMenuItem<String>(
          value: choice,
          child: Text(choice),
        );

      }).toList();
    }
  },
)

            ],

            bottom: TabBar(
              isScrollable: true,
              onTap: (index) {
                print(index);
                indexx = index;
              },
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.camera_alt),
                ),
                Tab(
                  text: '    CHATS    ',
                ),
                Tab(
                  text: '    STATUS    ',
                ),
                Tab(
                  text: '    CALLS    ',
                ),
              ],
              controller: tabController,
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: <Widget>[Camera(), Chats(), Status(), Calls()],
          ),
        ),
      ),

    );
  }
 void  choiceActions(String choice){
    if(choice==Constants.settings1)
    {
      Navigator.pushNamed(context,'/Settings');
      //_navigationService.navigateTo(Settings());


    }
    else if(choice==Constants.settings2)
    {
      Navigator.pushNamed(context,'/Settings');
     // _navigationService.navigateTo(Settings());
    }
    else if(choice==Constants.settings3)
    {
      Navigator.pushNamed(context,'/Settings');
      //_navigationService.navigateTo(Settings());
    }
  }
}
class Constants{
  static const String brodcast='New group';
  static const String group='New broadcast';
  static const String Web='WhatsApp Web';
  static const String starred='Starred messages';
  static const String settings1='Settings';
  static const String nothing='Nothing';
  static const String settings2='Settings';
  static const String settings3='Settings';
  static const String privacy='Status Privacy';
  static const String Call='Clear Call Log';
  static const List<String> choices1=<String>[
    brodcast,
    group,
    Web,
    starred,
    settings1,
  ];
  static const List<String> choices=<String>[
    nothing,
  ];
  static const List<String> choices2=<String>[
    privacy,
    settings2,
  ];
  static const List<String> choices3=<String>[
    Call,
    settings3,
  ];
}