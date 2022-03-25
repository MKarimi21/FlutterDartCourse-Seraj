import 'package:flutter/material.dart';

class RotateWidget extends StatefulWidget {
  const RotateWidget({Key? key}) : super(key: key);

  @override
  _RotateWidgetState createState() => _RotateWidgetState();
}

class _RotateWidgetState extends State<RotateWidget> {
  double _opacity = 0.25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rotate"),
      ),
      body: Container(
        padding: EdgeInsets.all(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onHover: _onHoverImage,
                  child: Opacity(
                    opacity: _opacity,
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
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onHoverImage(bool value) {
    if (value == true) {
      _opacity = 0.9;
      setState(() {});
    } else {
      _opacity = 0.25;
      setState(() {});
    }
  }
}
