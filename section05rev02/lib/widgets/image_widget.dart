import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
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
