import 'package:flutter/material.dart';
import 'package:flutter05_instagram/style.dart';
/*
  * 탭 만들기
    순서
    1. state에 tab의 현재상태 저장
    2. state에 따라 tab이 어떻게 보일지 작성
    3. 유저가 쉽게 state 조작할 수 있는 조작기능
 */
void main() {
  runApp(
      MaterialApp(
          theme: theme,
          home: const MyApp()
      )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // state 변수
  var tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
              onPressed: () {
              },
              icon: Icon(Icons.add_box_outlined))
        ],
      ),
      body: [Home(), Text('Shop Page')][tab],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (i) {
            setState(() {
              tab = i;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'Shop')
          ]
      ),
    );
  }
}

// custom widget으로 만들기
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (c, i){
        return Column(
          children: [
            Image.asset('assets/img.jpg'),
            Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('좋아요 100'),
                    Text('글쓴이'),
                    Text('글내용')
                  ],
                )
            ),
          ],
        );
      },
    );
  }
}
