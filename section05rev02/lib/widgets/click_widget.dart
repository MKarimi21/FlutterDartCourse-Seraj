import 'package:flutter/material.dart';

class ClickWidget extends StatefulWidget {
  const ClickWidget({Key? key}) : super(key: key);

  @override
  _ClickWidgetState createState() => _ClickWidgetState();
}

class _ClickWidgetState extends State<ClickWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click"),
      ),
      body: Container(
        padding: EdgeInsets.all(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Opacity(
                opacity: 0.35,
                child: Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.brown, width: 6)),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
