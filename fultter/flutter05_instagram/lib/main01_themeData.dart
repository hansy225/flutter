import 'package:flutter/material.dart';
/*
    ThemeData() : 스타일을 모아놓음
     : 별도의 파일로 만들어서 사용
 */
void main() {
  runApp(
      MaterialApp(
        theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.lightBlue),
          appBarTheme: AppBarTheme(
              backgroundColor: Color(0xFFf3edf7),
              actionsIconTheme: IconThemeData(color: Colors.redAccent),
              titleTextStyle: TextStyle(color: Colors.pinkAccent, fontSize: 30),
          ),
          textTheme: TextTheme(
            bodyMedium: TextStyle(color: Colors.deepPurpleAccent)
          )
        ),
        home: const MyApp()
      )
  );
}

var textColor = TextStyle(fontSize: 20, color: Colors.orange);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined))
        ],),
      body: Column(
        children: [
          Icon(Icons.star,),
          Text('안녕'),
          Text('별도 스타일 : 변수에 저장', style: textColor)
        ],
      ),
    );
  }
}

