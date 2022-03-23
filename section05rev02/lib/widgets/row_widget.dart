import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({Key? key}) : super(key: key);

  @override
  _RowWidgetState createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Row and Column"),
        ),
        body: Container(
          padding: EdgeInsets.all(9),
          child: Column(children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 110,
              color: Colors.purple,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                    3,
                    (index) => Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(right: 3),
                          color: Colors.white,
                          child: Center(child: Text("${index + 1}")),
                        )).toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              width: 150,
              height: 250,
              color: Colors.black38,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: List.generate(
                    3,
                    (index) => Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.only(right: 3),
                          color: Colors.white,
                          child: Center(child: Text("${index + 1}")),
                        )).toList(),
              ),
            ),
          ]),
        ));
  }
}
