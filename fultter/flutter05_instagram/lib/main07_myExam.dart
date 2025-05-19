import 'package:flutter/material.dart';
import 'package:flutter05_instagram/style.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
/*
    * 서버(DB)에서 데이터 요청하여 얻어오기
     - get 요청

    * package 설치 필요 : http
    * 안드로이드 인터넷 사용 권한 설정
    * import 하기
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
  List<dynamic> feedItems = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async{
    var result = await http.get(Uri.parse('https://jioneproferssor.store/flutter/data/data.json'));
    print(result.body);

    // json을 List로 변환 [{Map},{},{}]
    setState(() {
      feedItems = jsonDecode(result.body);
    });
  }

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
      body: [Home(feedItems: feedItems,), Text('Shop Page')][tab],
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
  final List<dynamic> feedItems;
  const Home({super.key, required this.feedItems});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feedItems.length,
      itemBuilder: (c, i) {
        return Column(
          children: [
            Image.network(feedItems[i]['image']),
            Container(
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('좋아요 : ${feedItems[i]['likes']}'),
                    Text('글쓴이 : ${feedItems[i]['user']}'),
                    Text('글내용 : ${feedItems[i]['content']}')
                  ],
                )
            ),
          ],
        );
      },
    );
  }
}
