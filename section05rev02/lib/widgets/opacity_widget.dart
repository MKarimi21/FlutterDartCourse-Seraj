import 'package:flutter/material.dart';

class OpacityWidget extends StatefulWidget {
  const OpacityWidget({Key? key}) : super(key: key);

  @override
  _OpacityWidgetState createState() => _OpacityWidgetState();
}

class _OpacityWidgetState extends State<OpacityWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Opacity"),
      ),
      body: Container(
        padding: EdgeInsets.all(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 121,
                  height: 121,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                child: Image.asset(
                  "assets/images/avatar.png",
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onClickedIcon() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(
        "ارسال انجام شد",
        textDirection: TextDirection.rtl,
      ),
      duration: Duration(seconds: 1),
      backgroundColor: Colors.red,
    ));
  } // void _onClickedIcon
}
