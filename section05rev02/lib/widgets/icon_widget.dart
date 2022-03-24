import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Icon"),
      ),
      body: Container(
        padding: EdgeInsets.all(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.alternate_email_outlined,
                color: Colors.blueAccent,
                size: 80,
              ),
              IconButton(
                onPressed: _onClickedIcon,
                icon: Icon(
                  Icons.send_outlined,
                  color: Colors.blue,
                  size: 60,
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
  }
}
