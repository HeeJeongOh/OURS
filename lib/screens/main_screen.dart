import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 다음일정 알림
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('356'), Text('356')],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
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
                          child: Image.asset(
                            'lib/assets/images/main_img.jpg',
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 160,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            '빈칸',
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
            )));
  }
}
