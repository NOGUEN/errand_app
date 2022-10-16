import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RecentErrand extends StatelessWidget {
  final String pay;
  final String location;
  final String head;
  final String date;
  RecentErrand(this.pay, this.location, this.head, this.date, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        child: Column(
          children: [
            Container(
                color: Colors.green,
                width: 70,
                height: 70,
                child: Text(
                  pay,
                )),
            Text(
              location,
            ),
            Row(
              children: [
                Text(head),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Text('+2'),
                )
              ],
            ),
            Text(date)
          ],
        ));
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'errand app',
        home: Scaffold(
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: 53,
              titleSpacing: 24,
              title: Text('덕부름',
                  style: TextStyle(
                    color: Color.fromARGB(6, 0, 0, 0),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  )),
              backgroundColor: Colors.white,
            ),
            body: Container(
                padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                color: Color.fromARGB(255, 255, 0, 0),
                child: ListView(
                  children: [
                    Container(/*공지 덕부름에 새로운 기능이 추가어쩌구*/),
                    SizedBox(/*간격*/),
                    Container(/*세븐틴 포토*/),
                    SizedBox(/*간격*/),
                    Container(/*심부름 신청하러 가기*/),
                    SizedBox(/*간격*/),
                    Container(/*최근 등록한 심부름*/),
                  ],
                ))));
  }
}
