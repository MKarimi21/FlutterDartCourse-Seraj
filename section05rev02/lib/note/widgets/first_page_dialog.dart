import 'package:flutter/material.dart';
import 'package:section05rev02/Helper/shared_helper.dart';

class FirstPageDialog extends StatelessWidget {
  String _name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.all(5),
        width: 350,
        height: 150,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("لطفا اسم خود را وارد کنید:"),
            TextField(
              onChanged: (changed) {
                _name = changed;
              },
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.3,
              height: 35,
              margin: EdgeInsets.only(top: 10),
              child: MaterialButton(
                onPressed: () {
                  _savedNameToSharedPreferences(context);
                },
                child: Text(
                  "تایید",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }

  void _savedNameToSharedPreferences(context) async {
    SharedHelper sharedHelper = new SharedHelper();
    await sharedHelper.init();
    sharedHelper.setName(_name);
    Navigator.pop(context);
  }
}
