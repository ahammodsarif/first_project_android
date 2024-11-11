import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:module_6_overview/BodyContainer.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(primarySwatch: Colors.pink),
      debugShowCheckedModeBanner: false,
      color: Colors.cyan,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),),
    );
  }

  ShowAlertDialog(context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return Expanded(
              child: AlertDialog(
                title: Text("Alert !"),
                content: Text("Do you want to delete"),
                actions: [
                  TextButton(onPressed: (){
                    MySnackBar("Delete Success", context);
                    Navigator.of(context).pop();
                  }, child: Text("Yes"),),
                  TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No"),),
                ],
              ),
          );
        }
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),

      body: Center(
        child: ElevatedButton(onPressed: (){ShowAlertDialog(context);}, child: Text("Click Me"),),
      ),
    );
  }
}

