import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_6_overview/main.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.pink),
      darkTheme: ThemeData(primarySwatch: Colors.teal),
      color: Colors.white,
      debugShowCheckedModeBanner: false,
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
      
      body: Container(
        height: 250,
        width: 250,
        alignment: Alignment.topCenter,
        margin: EdgeInsets.all(30),
        padding: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.black54,width: 10),
        ),
        child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s"),
      ),
    );
  }
}

