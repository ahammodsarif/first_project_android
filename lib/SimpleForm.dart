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
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      color: Colors.purpleAccent,
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
          Padding(padding: EdgeInsets.all(30),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "First Name"),),),
          Padding(padding: EdgeInsets.all(30),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Last Name"),),),
          Padding(padding: EdgeInsets.all(30),
          child: TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: "Email"),),),
        ],
      ),
    );
  }
}

