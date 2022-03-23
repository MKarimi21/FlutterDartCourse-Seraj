import 'package:flutter/material.dart';
import 'package:section05rev02/widgets/container_widget.dart';
import 'package:section05rev02/widgets/row_widget.dart';

import 'package:section05rev02/widgets/text_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test App',
      theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          fontFamily: "iransans"),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("منوی اولین اپلیکشن"),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => TextWidget()));
              },
              child: Text(
                "Text",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => ContainerWidget()));
              },
              child: Text(
                "Container",
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (builder) => RowWidget()));
              },
              child: Text(
                "Column and Row",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
