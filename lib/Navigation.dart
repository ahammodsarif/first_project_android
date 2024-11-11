import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_6_overview/AlertDialog.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.lime),
      darkTheme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      color: Colors.limeAccent,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1()));

          }, child: Text("Go Activity 1")),

          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2()));
          }, child: Text("Go Activity 2")),
        ],
      ),
    );
  }
}

class Activity1 extends StatelessWidget {
  const Activity1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity1"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2()));
        }, child: Text("Go Activity 2")),
      ),
    );
  }
}

class Activity2 extends StatelessWidget {
  const Activity2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity2"),
      ),
      body: Center(
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1()));
        }, child: Text("Go Activity 1")),
      ),
    );
  }
}