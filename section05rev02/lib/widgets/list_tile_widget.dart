import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  _ListTileWidgetState createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  dynamic _selected;
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
                    children: List.generate(12, (index) {
                      bool _select = (_selected == index);
                      return ListTile(
                        title: Text("Person"),
                        subtitle: Text("About Person"),
                        leading: Icon(Icons.person),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.favorite),
                            Icon(Icons.call),
                            Icon(Icons.message),
                            Icon(Icons.delete),
                          ],
                        ),
                        selected: _select,
                        onTap: () {
                          _selected = index;
                          setState(() {});
                        },
                      );
                    }).toList(),
                  )),
            )));
  }
}
