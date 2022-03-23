import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SecondClassState();
  }
}

class _SecondClassState extends State<SecondClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Hello Mostafa'),
      ),
    );
  }
}
