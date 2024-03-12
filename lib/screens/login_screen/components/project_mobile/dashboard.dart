import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      backgroundColor: Color.fromARGB(255, 80, 79, 79),
    ),
    backgroundColor:Colors.black,
    drawer: Drawer(
      backgroundColor: Colors.grey,
      child: Column(children: [
        DrawerHeader(child:Icon(Icons.home),
        )
        
      ,
        ListTile(
          title: Text("Daftar"),
        ),
        ListTile(
          title: Text("Lahan A"),
        ),
        ListTile(
          title: Text("Lahan B"),
        ),
        ListTile(
          title: Text("Lahan C"),
        ),
      ],)
    ),
    
    );
  }
}