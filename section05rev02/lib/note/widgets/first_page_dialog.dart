import 'package:flutter/material.dart';

class FirstPageDialog extends StatelessWidget {
  const FirstPageDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 150,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("لطفا اسم خود را وارد کنید:"),
        ],
      ),
    );
  }
}
