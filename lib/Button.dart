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
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
   HomeActivity({super.key});

   MySnackBar(message, context){
     ScaffoldMessenger.of(context).showSnackBar(
         SnackBar(content: Text(message)),
     );
   }

  final ButtonStyle buttonStyle=ElevatedButton.styleFrom(
    padding: EdgeInsets.all(25),
    backgroundColor: Colors.green,
    foregroundColor: Colors.black54,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(40)),
    )
  );

   final ButtonStyle buttonStyle1=TextButton.styleFrom(
       padding: EdgeInsets.all(25),
       backgroundColor: Colors.cyanAccent,
       foregroundColor: Colors.purpleAccent,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(40)),
       )
   );

   final ButtonStyle buttonStyle2=OutlinedButton.styleFrom(
       padding: EdgeInsets.all(25),
       backgroundColor: Colors.pink,
       foregroundColor: Colors.limeAccent,
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.all(Radius.circular(40)),
       )
   );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
      ),
      body: Row(
        children: [
          ElevatedButton(onPressed: (){MySnackBar("This is Text Elevated Button", context);}, child: Text("Elevated Button"),style: buttonStyle,),
          TextButton(onPressed: (){MySnackBar("This is Text Button", context);}, child: Text("Text Button"),style: buttonStyle1,),
          OutlinedButton(onPressed: (){MySnackBar("This is OutLine Button", context);}, child: Text("OutLine Button"),style: buttonStyle2,)
        ],
      ),
    );
  }
}

