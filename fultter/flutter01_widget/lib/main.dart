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
        appBar: AppBar(title: Text('예제'),),
        body: Center(child: Text('본문 내용'),),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.ac_unit),
            Icon(Icons.add_call),
            Icon(Icons.adb)
          ],
        ),
      ),
    );
  }

}

