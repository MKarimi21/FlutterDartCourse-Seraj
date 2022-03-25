import 'package:flutter/material.dart';

class RotateWidget extends StatefulWidget {
  const RotateWidget({Key? key}) : super(key: key);

  @override
  _RotateWidgetState createState() => _RotateWidgetState();
}

class _RotateWidgetState extends State<RotateWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotate"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: 3, // 0, 1, 2, 3, 4
              child: Container(
                width: 150,
                height: 50,
                color: Colors.green,
                child: Center(
                    child: Text(
                  "متن آماده جهت تغییر",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
