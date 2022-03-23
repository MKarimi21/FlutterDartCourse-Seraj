import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  _RowWidgetState createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Container"),
        ),
        body: Container(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10))),
            child: Text("Hello Mostafa"),
          ),
        ));
  }
}
