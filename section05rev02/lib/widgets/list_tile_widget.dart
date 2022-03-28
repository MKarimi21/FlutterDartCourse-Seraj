import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List Tile"),
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      12,
                      (index) => ListTile(
                            title: Text("Person"),
                            subtitle: Text("About Person"),
                            leading: Icon(Icons.person),
                            selected: true,
                            onTap: () {},
                          )).toList(),
                ),
              ),
            )));
  }
}
