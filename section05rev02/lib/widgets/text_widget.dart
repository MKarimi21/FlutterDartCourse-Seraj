import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key}) : super(key: key);

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text"),
      ),
      body: Center(
        child: Text("This is Text"
        style: TextStyle(
          color: Colors.red,
          fontFamily: "opensans",
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}
