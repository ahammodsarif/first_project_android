import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Fragment/AcUnitFragment.dart';
import 'Fragment/AccessAlarmFragment.dart';
import 'Fragment/AccessTimeFragment.dart';
import 'Fragment/ContactEmergencyFragment.dart';
import 'Fragment/EmailFragment.dart';
import 'Fragment/HomeFragment.dart';
import 'Fragment/PersonFragment.dart';
import 'Fragment/SearchFragment.dart';
import 'Fragment/SettingFragment.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      color: Colors.lime,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 9,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Inventory Apps"),
            backgroundColor: Colors.lightGreen,
            toolbarHeight: 100,
            bottom: TabBar(
              isScrollable: true,
              tabs: [
                Tab(icon: Icon(Icons.home),text: "home",),
                Tab(icon: Icon(Icons.settings),text: "settings",),
                Tab(icon: Icon(Icons.search),text: "search",),
                Tab(icon: Icon(Icons.person),text: "person",),
                Tab(icon: Icon(Icons.email),text: "email",),
                Tab(icon: Icon(Icons.contact_emergency),text: "contact_emergency",),
                Tab(icon: Icon(Icons.access_alarm),text: "access_alarm",),
                Tab(icon: Icon(Icons.ac_unit),text: "ac_unit",),
                Tab(icon: Icon(Icons.access_time),text: "access_time",),

              ],
            ),
          ),

          body: TabBarView(
              children: [
                Homefragment(),
                Searchfragment(),
                Settingfragment(),
                Personfragment(),
                Emailfragment(),
                Contactemergencyfragment(),
                Accessalarmfragment(),
                Accesstimefragment(),
                AcUnitfragment(),
              ]
          ),
        )
    );
  }
}

