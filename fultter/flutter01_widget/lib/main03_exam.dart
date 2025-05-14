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
        appBar: AppBar(title: Text('예제'),backgroundColor: Color(0xFFf3edf7),),  // oxFF : 투명도, f3edf7 : 색상
        body: Center(child: Text('본문 내용'),),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.favorite, color: Colors.red,),
              Icon(Icons.stars_sharp, color: Colors.orangeAccent,),
              Icon(Icons.info, color: Colors.blueAccent,),
            ],
          ),
        ),
      ),
    );
  }

}

