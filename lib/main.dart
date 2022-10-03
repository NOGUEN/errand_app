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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  children: [
                    Text(
                      '공지 ',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '덕부름에 새로운 기능이 추가됐어요.',
                      textAlign: TextAlign.left,
                    ),
                  ],
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration (
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Column (
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'EVENT',
                      textAlign: TextAlign.right,
                    ),
                    Text(
                      'SEVENTEEN Photo',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('지금 이벤트 참가하고 세븐틴 굿즈 받기'),
                  ],
                )),
            Container(
                width: double.infinity,
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration (
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(5.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Column (
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text (
                            '심부름 신청하러 가기',
                            textAlign: TextAlign.left,
                            style: TextStyle (
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          Text(
                            '덕질 관련 심부름을 신청해 보세요!',
                            style: TextStyle (
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                    Container (
                      width: 30.0,
                      height: 30.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15.0))
                      ),
                      child: const Align (
                        alignment: Alignment.centerRight,
                      )
                    )
                  ],
                )
            ),
            Container (
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text (
                      '최근 등록한 심부름',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text (
                          '더보기',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon (
                          Icons.chevron_right
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row (
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding (
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration (
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                ),
                Padding (
                  padding: const EdgeInsets.all(10.0),
                  child: Container (
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration (
                        color: Colors.black12,
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
                ),
                child: Row (
                  children: [
                    Text(
                      '덕부름 이용 방법',
                      style: TextStyle(),
                    )
                  ],
                )
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(),
    ));
  }
}
