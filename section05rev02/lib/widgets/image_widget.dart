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
            children: [],
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
