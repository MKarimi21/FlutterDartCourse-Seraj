import 'package:flutter/material.dart';

class GridViewWidget extends StatefulWidget {
  const GridViewWidget({Key? key}) : super(key: key);

  @override
  _GridViewWidgetState createState() => _GridViewWidgetState();
}

class _GridViewWidgetState extends State<GridViewWidget> {
  final List<String> _name = [
    "Sajjad",
    "Naser",
    "Ghasem",
    "Mahmood",
    "Hamed",
    "Ali",
    "Abolfazl",
    "Mahdi",
    "Mostafa",
    "Reza",
    "Ahmad",
  ];
  dynamic _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View"),
      ),
      body: Container(
          padding: EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: _listViewItemBuilder,
              itemCount: _name.length,
            ),
          )),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return ExpansionTile(
      title: Text(_name.elementAt(index)),
      children: [
        ExpansionTile(
          title: Text("Number ${index + 1}"),
          children: [
            Center(
                child: Container(
              child: Wrap(
                spacing: 5,
                children: [
                  Icon(Icons.favorite),
                  Icon(Icons.call),
                  Icon(Icons.message),
                  Icon(Icons.delete),
                ],
              ),
            ))
          ],
        ),
      ],
    );
  }
}
