import 'package:flutter/material.dart';
import 'package:section05rev02/widgets/animation_container_widget.dart';
import 'package:section05rev02/widgets/click_widget.dart';
import 'package:section05rev02/widgets/container_widget.dart';
import 'package:section05rev02/widgets/icon_widget.dart';
import 'package:section05rev02/widgets/image_widget.dart';
import 'package:section05rev02/widgets/opacity_widget.dart';
import 'package:section05rev02/widgets/rotate_widget.dart';
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => TextWidget()));
                    },
                    child: Text(
                      "Text",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ContainerWidget()));
                    },
                    child: Text(
                      "Container",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (builder) => RowWidget()));
                    },
                    child: Text(
                      "Column and Row",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => IconWidget()));
                    },
                    child: Text(
                      "Icon",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ImageWidget()));
                    },
                    child: Text(
                      "Image",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => OpacityWidget()));
                    },
                    child: Text(
                      "Opacity",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => ClickWidget()));
                    },
                    child: Text(
                      "Click",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => RotateWidget()));
                    },
                    child: Text(
                      "Rotate",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.07,
                  margin: EdgeInsets.symmetric(vertical: 9),
                  child: MaterialButton(
                    color: Colors.red,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) =>
                                  AnimationContainerWidget()));
                    },
                    child: Text(
                      "Animation Container",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
