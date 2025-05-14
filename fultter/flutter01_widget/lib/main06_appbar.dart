import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFf3edf7),
          leading: Icon(Icons.list),  // 왼쪽
          title: Text('MyApp'),
          actions: [Icon(Icons.search, color: Colors.pinkAccent,), Icon(Icons.account_circle, color: Colors.pinkAccent)],  // 오른쪽
        ),
        
        body: Text('본문'),

        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.favorite, color: Colors.red,),
              Icon(Icons.stars_sharp, color: Colors.orangeAccent,),
              Icon(Icons.info, color: Colors.green,),
            ],
          ),
        ),
      ),
    );
  }

}

