import 'package:flutter/material.dart';
import 'package:section05rev02/model/book_parser.dart';

class JsonParserScreen extends StatefulWidget {
  JsonParserScreen({Key? key}) : super(key: key);

  @override
  State<JsonParserScreen> createState() => _JsonParserScreenState();
}

class _JsonParserScreenState extends State<JsonParserScreen> {
  List<BookModel> _bookList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("پارسر جیسون"),
      ),
      body: Container(
          child: _bookList.isEmpty
              ? Container(
                  // True if
                  child: Center(
                      child: MaterialButton(
                    onPressed: () {
                      _parseJson();
                    },
                    child: Text("دریافت کن"),
                  )),
                )
              : Container()),
    );
  }

  void _parseJson() {}
}
