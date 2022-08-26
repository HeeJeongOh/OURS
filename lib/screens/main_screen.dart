import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String memo = '메모';
  String days = '356';
  String notification = '다음 일정';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Align(
            alignment: Alignment.center,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.9,
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // 다음일정 알림
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.flare_rounded),
                            SizedBox(
                              width: 5,
                            ),
                            Text(notification)
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.favorite_outline_rounded),
                            Text('+' + days),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        height: MediaQuery.of(context).size.height * 0.75,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Column(
                          children: [
                            Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.4,
                                width: MediaQuery.of(context).size.width * 0.8,
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  child: Image.network(
                                      'https://w0.peakpx.com/wallpaper/99/34/HD-wallpaper-snowball-rabbit-the-secret-life-of-pets.jpg'
                                      // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQne0HXWMIR52GR4eQykOWJE71Z3q9qiwyDVQ&usqp=CAU',
                                      ,
                                      fit: BoxFit.cover),
                                )),
                            Container(
                              margin: EdgeInsets.only(top: 20),
                              height: 160,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: Text(
                                memo,
                                textAlign: TextAlign.center,
                              ),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid),
                                  borderRadius: BorderRadius.circular(10.0)),
                            )
                          ],
                        )),
                  ],
                ))));
  }
}
