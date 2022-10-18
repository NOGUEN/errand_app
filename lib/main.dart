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
              centerTitle: false,
              elevation: 0,
              toolbarHeight: 53,
              titleSpacing: 24,
              backgroundColor: Colors.white,
              title: Text(
                '덕부름',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Container(
                padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
                color: Colors.white,
                child: ListView(
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(14, 10, 14, 10),
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Color.fromARGB(255, 248, 248, 248),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '공지',
                              style: TextStyle(
                                  fontWeight: FontWeight.w800, fontSize: 13),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '덕부름에 새로운 기능이 추가됐어요.',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 13),
                            )
                          ],
                        )),
                    SizedBox(height: 20),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          child: Image.asset(
                            'assets/seventeen.png',
                            height: 172.0,
                          ),
                        ),
                        Container(
                          height: 172.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              gradient: LinearGradient(
                                  begin: FractionalOffset.topCenter,
                                  end: FractionalOffset.bottomCenter,
                                  colors: [
                                    Color(0x87878799).withOpacity(0.6),
                                    Color(0x23262800).withOpacity(0.0),
                                    Colors.transparent,
                                  ],
                                  stops: [
                                    0.0,
                                    1.0,
                                    0.2,
                                  ])),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(20, 32, 0, 63),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'EVENT',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w300,
                                      color: Color(0xffffffff)),
                                ),
                                Text('SEVENTEEN Photo',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xffffffff),
                                    )),
                                Text(
                                  '지금 이벤트 참가하고 세븐틴 굿즈 받기',
                                  style: TextStyle(
                                    height: 2.0,
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                )
                              ],
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(24, 141, 256, 24),
                          child: Row(
                            children: [
                              Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.5)),
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 9.0,
                              ),
                              Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.5)),
                                    color: Color.fromARGB(122, 255, 255, 255)),
                              ),
                              SizedBox(
                                width: 9.0,
                              ),
                              Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.5)),
                                    color: Color.fromARGB(122, 255, 255, 255)),
                              ),
                              SizedBox(
                                width: 9.0,
                              ),
                              Container(
                                width: 7.0,
                                height: 7.0,
                                decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3.5)),
                                    color: Color.fromARGB(122, 255, 255, 255)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(/*심부름 신청하러 가기*/),
                    /*
                    SizedBox(/*간격*/),
                    Container(/*최근 등록한 심부름*/),
                    SizedBox(/*간격*/),
                    ListView(/*최근 등록한 심부름 리스트*/),
                    SizedBox(/*간격*/),
                    Container(/*팁 덕부름 이용 방법*/)*/
                  ],
                ))));
  }
}
