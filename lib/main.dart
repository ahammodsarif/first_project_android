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

  MySnackBar(message, context){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory App"),
        toolbarHeight: 100,
        titleSpacing: 10,
        backgroundColor: Colors.white60,
        elevation: 10,
        shadowColor: Colors.pink,
        centerTitle: true,
        toolbarOpacity: 0.9,

        actions: [
          IconButton(onPressed: (){MySnackBar("This is home Button", context);}, icon: Icon(Icons.home),),
          IconButton(onPressed: (){MySnackBar("This is settings Button", context);}, icon: Icon(Icons.settings),),
          IconButton(onPressed: (){MySnackBar("This is search Button", context);}, icon: Icon(Icons.search),),
          IconButton(onPressed: (){MySnackBar("This is person Button", context);}, icon: Icon(Icons.person),),
          IconButton(onPressed: (){MySnackBar("This is ac_unit Button", context);}, icon: Icon(Icons.ac_unit),),
          
        ],
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
          child: Icon(Icons.add),
          backgroundColor: Colors.teal,

          onPressed: (){
          MySnackBar("This is Floating Action Button", context);

          },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.grey,
        iconSize: 25,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),

        ],
        
        onTap: (int index){
          if(index == 0){
            MySnackBar("This is Home Button", context);
          }
          if(index == 1){
            MySnackBar("This is Setting Button", context);
          }
          if(index == 2){
            MySnackBar("This is Search Button", context);
          }
        },
      ),
      
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.all(0),
                child: UserAccountsDrawerHeader(
                    accountName: Text("Ahammod Sarif"),
                    accountEmail: Text("ahammodtannababu@gmail.com"),
                  currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s"),
                ),
            ),
            ListTile(
              title: Text("Home"),leading: Icon(Icons.home),
              onTap: (){
                MySnackBar("This is Home Button", context);
              },
            ),
            ListTile(
              title: Text("Search"),leading: Icon(Icons.search),
              onTap: (){
                MySnackBar("This is Search Button", context);
              },
            ),
            ListTile(
              title: Text("Setting"),leading: Icon(Icons.settings),
              onTap: (){
                MySnackBar("This is Setting Button", context);
              },
            ),

          ],
        ),
      ),

      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                accountName: Text("Ahammod Sarif"),
                accountEmail: Text("ahammodtannababu@gmail.com"),
                currentAccountPicture: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIJjD69hANYX5BWHfOl4dkwsF3HFNe_4EkwQ&s"),
              ),
            ),
            ListTile(
              title: Text("Home"),leading: Icon(Icons.home),
              onTap: (){
                MySnackBar("This is Home Button", context);
              },
            ),
            ListTile(
              title: Text("Search"),leading: Icon(Icons.search),
              onTap: (){
                MySnackBar("This is Search Button", context);
              },
            ),
            ListTile(
              title: Text("Setting"),leading: Icon(Icons.settings),
              onTap: (){
                MySnackBar("This is Setting Button", context);
              },
            ),

          ],
        ),
      ),
    );
  }
}

