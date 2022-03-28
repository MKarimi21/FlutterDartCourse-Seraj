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
            child: ListView.builder(
                itemCount: _name.length, itemBuilder: _listViewItemBuilder),
          )),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    return ListTile(
      title: Text(_name.elementAt(index)),
      subtitle: Text("Number ${index + 1}"),
      leading: Icon(Icons.person),
      trailing: Wrap(
        spacing: 5,
        children: [
          Icon(Icons.favorite),
          Icon(Icons.call),
          Icon(Icons.message),
          Icon(Icons.delete),
        ],
      ),
    );
  }
}
