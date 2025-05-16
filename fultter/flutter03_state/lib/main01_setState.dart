import 'package:flutter/material.dart';
/*
    * state(변수)
     : 일반 변수와 다른 점은 변경이 되면 재런더링을 해줌
      > state 변수를 사용하려면 StatefulWidget 안에서 사용
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var num = 1;
  var name = ['홍길동', '더조은', '빛나리'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          floatingActionButton: FloatingActionButton(
            child: Text(num.toString()),
              onPressed: (){
                print('지역변수 num = $num');
                setState(() {
                  num++;
                });
              }
          ),
          appBar: AppBar(
            backgroundColor: Color(0xFFf3edf7),
            leading: Icon(Icons.list_sharp),
            title: Text('주소록'),
            actions: [Icon(Icons.search), Icon(Icons.share)],
          ),
          body: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Image.asset('assets/user${index+1}.png'),
                  title: Text(name[index]),
              );
            },
            itemCount: 3,
          ),
          bottomNavigationBar: CustomBottom()
        )
    );
  }
}

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          Icon(Icons.phone),
          Icon(Icons.article_outlined),
          Icon(Icons.contacts_outlined)
        ],
      ),
    );
  }
}
