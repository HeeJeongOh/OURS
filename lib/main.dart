import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'screens/album_screen.dart';
import 'screens/bucket_screen.dart';
import 'screens/calendar_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

List<StatefulWidget> Screens = [MainScreen(), CalendarScreen(), BucketScreen()];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Scaffold(
      body: Container(
        child: PageView.builder(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          controller: controller,
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (BuildContext context, int idx) {
            return Stack(alignment: Alignment.center, children: [
              Screens[idx],
              Positioned(
                  bottom: 30,
                  child: AnimatedSmoothIndicator(
                    activeIndex: idx,
                    count: Screens.length,
                    effect: const ScrollingDotsEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.black,
                    ),
                  ))
            ]);
          },
        ),
      ),
    );
  }
}
