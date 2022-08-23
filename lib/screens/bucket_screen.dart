import 'package:flutter/material.dart';

class BucketScreen extends StatefulWidget {
  const BucketScreen({Key? key}) : super(key: key);

  @override
  State<BucketScreen> createState() => _BucketScreenState();
}

class _BucketScreenState extends State<BucketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('BUCKET SCREEN')));
  }
}
