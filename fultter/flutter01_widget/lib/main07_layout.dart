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
          title: Text('강남역'),
          actions: [Icon(Icons.search,), Icon(Icons.menu), Icon(Icons.add_location_alt_rounded)],  // 오른쪽
        ),
        
        body: Container(
          width: 500, height: 200,
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.all(5),
          child: Row(
            children: [
              Image.asset('assets/images/img.jpg'),
              SizedBox(width: 15),
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('한교동 인형',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28),),
                    Text('강남 , 10분전'),
                    Text('5,000원',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),
                    ),
                    SizedBox(
                      width: 150,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.favorite_border),
                          Text('4')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
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

