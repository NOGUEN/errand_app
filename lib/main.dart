import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class RecentErrand extends StatelessWidget {
  final String pay;
  final String location;
  final String head;
  final String date;
  final int bgColor;
  final int textColor;
  final bool visible;
  RecentErrand(this.pay, this.location, this.head, this.date, this.bgColor,
      this.textColor, this.visible,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 0, 12, 0),
      child: Container(
        width: 139,
        height: 144,
        padding: EdgeInsets.fromLTRB(14, 14, 16, 18),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(14.0)),
            border: Border.all(
              width: 1,
              color: Color(0xFFF1F1F1),
            )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6.0)),
                  color: Color(bgColor),
                ),
                child: Text(
                  pay,
                  style: TextStyle(
                    fontSize: 11.0,
                    height: 13.0 / 11.0,
                    fontWeight: FontWeight.w800,
                    color: Color(textColor),
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              location,
              style: TextStyle(
                fontSize: 14.0,
                height: 17.0 / 14.0,
                fontWeight: FontWeight.w800,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16.0)),
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Text(
                      head,
                      style: TextStyle(
                        fontSize: 11.0,
                        height: 13.0 / 11.0,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFF3C88FA),
                      ),
                    )),
                Visibility(
                  // ignore: sort_child_properties_last
                  child: Container(
                    padding: EdgeInsets.fromLTRB(4, 6, 4, 6),
                    width: 26.0,
                    height: 26.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(13.0)),
                      color: Color(0xFF3C88FA),
                    ),
                    child: Text(
                      '+2',
                      style: TextStyle(
                        fontSize: 12.0,
                        height: 14.0 / 12.0,
                        fontWeight: FontWeight.w800,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                  visible: visible,
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              date,
              style: TextStyle(
                fontSize: 12.0,
                height: 14.0 / 12.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFFB1B1B4),
              ),
            ),
          ],
        ),
      ),
    );
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
                style: TextStyle(
                    fontSize: 24.0,
                    height: 29.0 / 24.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'ChangwonDangamAsac',
                    color: Color(
                      0xFF3C88FA,
                    )),
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
                    Container(
                      height: 80,
                      padding: EdgeInsets.fromLTRB(18, 20, 24, 19),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Color(0xFF1F1F21),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '심부름 신청하러 가기',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    height: 19.0 / 16.0,
                                    fontWeight: FontWeight.w800,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                Text(
                                  '덕질 관련 심부름을 신청해 보세요!',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    height: 17.0 / 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                width: 40.0,
                                height: 40.0,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  color: Color(0xFF3E3E40),
                                ),
                                child: Icon(
                                  Icons.arrow_forward_rounded,
                                  color: Colors.white,
                                ))
                          ]),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '최근 등록된 심부름',
                          style: TextStyle(
                            fontSize: 16.0,
                            height: 19.0 / 16.0,
                            fontWeight: FontWeight.w800,
                            color: Color(0xFF000000),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '더보기',
                              style: TextStyle(
                                fontSize: 13.0,
                                height: 16.0 / 13.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFB1B1B4),
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 13.0,
                              color: Color(0xFFB1B1B4),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 14.0,
                    ),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            RecentErrand('시급 1만원', '서울 광진구', '팬싸 대리응모',
                                '8/6 오후 8:00', 0xFFE0F4F8, 0xFF04BCD6, true),
                            RecentErrand('시급 1만원', '서울 광진구', '행사 대리줄서기',
                                '8/6 오후 8:00', 0xFFF0E9FF, 0xFF8F5BFF, false),
                          ],
                        )),
                    SizedBox(
                      height: 29,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(19, 19, 0, 19),
                      height: 86.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        color: Color(0xFFF7FFE7),
                      ),
                      child: Row(children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(1, 12, 1, 12),
                            alignment: Alignment.center,
                            width: 48.0,
                            height: 48.0,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(24.0)),
                              color: Color(0xFFDBFFAC),
                            ),
                            child: Text(
                              'Tip!',
                              style: TextStyle(
                                fontSize: 16.0,
                                height: 24.0 / 16.0,
                                fontWeight: FontWeight.w800,
                              ),
                            )),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '덕부름 이용 방법',
                              style: TextStyle(
                                fontSize: 16.0,
                                height: 19.0 / 16.0,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '덕부름의 이용 방법을 알아보세요!',
                                  style: TextStyle(
                                    fontSize: 13.0,
                                    height: 15.0 / 13.0,
                                    fontWeight: FontWeight.w500,
                                    color:
                                        Color.fromRGBO(0x3E, 0x3E, 0x40, 0.8),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 13.0,
                                  color: Color.fromRGBO(0x3E, 0x3E, 0x40, 0.8),
                                ),
                              ],
                            )
                          ],
                        )
                      ]),
                    )
                  ],
                ))));
  }
}
