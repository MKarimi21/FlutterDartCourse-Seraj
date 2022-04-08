import 'package:flutter/material.dart';
import 'package:section05rev02/model/book_parser.dart';

class JsonParserScreen extends StatefulWidget {
  JsonParserScreen({Key? key}) : super(key: key);

  @override
  State<JsonParserScreen> createState() => _JsonParserScreenState();
}

class _JsonParserScreenState extends State<JsonParserScreen> {
  List<BookModel> _bookList = [
    // BookModel(
    //   id: "1",
    //   author: "Mosi",
    //   language: "C++",
    //   edition: "2",
    // ),
    // BookModel(
    //   id: "2",
    //   author: "rez",
    //   language: "Python",
    //   edition: "2",
    // ),
    // BookModel(
    //   id: "3",
    //   author: "asa",
    //   language: "C",
    //   edition: "2",
    // ),
  ];
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
                  // True if and is Empty
                  child: Center(
                      child: MaterialButton(
                    onPressed: () {
                      _parseJson();
                    },
                    child: Text("دریافت کن"),
                    color: Colors.red,
                  )),
                )
              : Container(
                  // False if and is have date
                  child: ListView(
                    children: _bookList.asMap().entries.map((e) {
                      return ListTile(
                        title: Text(e.value.language ?? ""),
                        subtitle: Text(e.value.language ?? ""),
                      );
                    }).toList(),
                  ),
                )),
    );
  }

  void _parseJson() {
    String json = """
{
   "book": [

      {
         "id": "01",
         "language": "Java",
         "edition": "third",
         "author": "Herbert Schildt"
      },

      {
         "id": "07",
         "language": "C++",
         "edition": "second",
         "author": "E.Balagurusamy"
      }

   ]
}""";
  }
}
