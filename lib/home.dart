
import 'package:flutter/material.dart';
import 'package:tabs/screens/Notification.dart';
import 'package:tabs/screens/dashboard.dart';
import 'package:tabs/screens/groups.dart';
import 'package:tabs/screens/menu.dart';
import 'package:tabs/screens/profile.dart';
import 'package:tabs/screens/videos.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState()
  {
    // TODO: implement initState
    super.initState();
    controller = new TabController(vsync: this,length: 6,);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: Text('Facebook',style: TextStyle(color: Colors.blue.shade800,fontWeight: FontWeight.bold,fontSize: 24),),
      backgroundColor: Colors.white,
      actions: [
        IconButton(
            icon: Icon(Icons.search_rounded,size: 30,color: Colors.grey.shade700,),
            onPressed: null,
            color: Colors.grey,

        ),
        IconButton(
          icon: Icon(Icons.message,size: 30,color: Colors.grey.shade700,),
          onPressed: null,
          color: Colors.grey,

        )
      ],
      bottom: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: [
          Tab(icon: Icon(Icons.home,size: 30,color: Colors.blue.shade800,),),
          Tab(icon: Icon(Icons.group,size: 30,color: Colors.blue.shade800,),),
          Tab(icon: Icon(Icons.play_circle_outline,size: 30,color: Colors.blue.shade800,),),
          Tab(icon: Icon(Icons.person_pin,size: 30,color: Colors.blue.shade800,),),
          Tab(icon: Icon(Icons.alarm,size: 30,color: Colors.blue.shade800,),),
          Tab(icon: Icon(Icons.menu,size: 30,color: Colors.blue.shade800,),),
        ],
      ),
    ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
            Dashboard(),
            Groups(),
            Vidoes(),
            Profile(),
            Notifcation(),
            Menu()
        ],
      ),
    );
  }
}
