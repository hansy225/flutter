import 'package:flutter/material.dart';
/*
    - Container(), SizedBox()
      Container() :
      SizedBox() : width, height, child만 필요하면 이거 쓰면 됨

    * style
 */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('예제'),backgroundColor: Color(0xFFf3edf7),),
        
        body: SizedBox(
          /* 글자 스타일
          child: Text('안녕',
            style: TextStyle(color: Colors.red,
                   fontSize: 30,
                   fontWeight: FontWeight.w700,
            ),
          ),*/
          /* 아이콘 스타일
          child: Icon(
            Icons.face_2, 
            color: Colors.pinkAccent, 
            size: 50,  // 기본 사이즈 : 24
          ),*/
          // 버튼 스타일
          // child: TextButton(onPressed: (){}, child: Text('TextButton')),
          // child: ElevatedButton(onPressed: (){}, child: Text('ElevatedButton')),
          child: IconButton(
              onPressed: (){
                // 버튼을 클릭 시 실행할 코드
              },
              icon: Icon(
                Icons.back_hand,
                color: Colors.indigoAccent,
                size: 60,
              )),
        ),

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

