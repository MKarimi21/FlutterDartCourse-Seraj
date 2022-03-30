import 'package:flutter/material.dart';

class HeroWidget extends StatefulWidget {
  const HeroWidget({Key? key}) : super(key: key);

  @override
  _HeroWidgetState createState() => _HeroWidgetState();
}

class _HeroWidgetState extends State<HeroWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero"),
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
