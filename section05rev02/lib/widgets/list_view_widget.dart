import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
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
        title: Text("List View"),
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
