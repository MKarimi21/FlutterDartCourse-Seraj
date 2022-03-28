import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({Key? key}) : super(key: key);

  @override
  _ListViewWidgetState createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  dynamic _selected;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("List View"),
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
                        trailing: Wrap(
                          spacing: 5,
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
