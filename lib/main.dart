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
          title: Text(
            '덕부름',
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0)
                  )
                ),
                child: Row(
                  children: [
                    Text(
                      '공지 ',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('덕부름에 새로운 기능이 추가됐어요.'),
                  ],
                )
              ),
              Container(),
              Container(),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      )
    );
  }
}
