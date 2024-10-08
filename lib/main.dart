import 'package:flutter/material.dart';

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
        toolbarHeight: 100,
        titleSpacing: 10,
        backgroundColor: Colors.cyanAccent,
        elevation: 10,
        shadowColor: Colors.black54,
        centerTitle: true,
        toolbarOpacity: 0.9,
      ),
    );
  }
}

