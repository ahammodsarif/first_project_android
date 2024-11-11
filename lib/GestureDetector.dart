import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lime),
      darkTheme: ThemeData(primarySwatch: Colors.green),
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  var MyItems=[
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlDLdxey6GHFVf3TWMvYupgkFHBGFWGf_6uw&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
    {"Image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s","title":"Crish Evan"},
  ];

  mySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),

      body: ListView.builder(
        itemCount: MyItems.length,
        itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){mySnackBar(context, MyItems[index]["title"]);},
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 250,
              child: Image.network(MyItems[index]["Image"]!,fit: BoxFit.fill,),
            ),
          );
        },
      ),
    );
  }
}