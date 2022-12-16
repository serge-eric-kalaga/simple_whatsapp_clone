import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
        appBar:  AppBar(
          actions: [
            IconButton(
              icon: const Icon(Icons.search), 
              color: Colors.white, 
              onPressed: () {}
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),  
              color: Colors.white,
              onPressed: () {}
            )
          ],
          title: const Text("Whatsapp"), 
          backgroundColor: Colors.green,
         
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera), text: "Caméra",),
              Tab( icon: Icon(Icons.message), text: "Disc.",),
              Tab(icon: Icon(Icons.call), text: "Appels",)
            ]),
        ),
        
        body: const TabBarView(
            children: [
              Icon(Icons.camera),
              Icon(Icons.message),
              Icon(Icons.call),
            ],
          ),
          
        floatingActionButton: const FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.green,
          child: Icon(Icons.add)
        ),
     
      ),
      )
    );
  }
}
