import 'package:flutter/material.dart';
import 'package:section05rev02/widgets/animated_icon_widget.dart';
import 'package:section05rev02/widgets/animation_container_widget.dart';
import 'package:section05rev02/widgets/click_widget.dart';
import 'package:section05rev02/widgets/container_widget.dart';
import 'package:section05rev02/widgets/grid_widget.dart';
import 'package:section05rev02/widgets/hero_widget.dart';
import 'package:section05rev02/widgets/icon_widget.dart';
import 'package:section05rev02/widgets/image_widget.dart';
import 'package:section05rev02/widgets/list_tile_widget.dart';
import 'package:section05rev02/widgets/list_view_widget.dart';
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
          primarySwatch: Colors.green,
          fontFamily: "iransans"),
      home: MainPage(),
    );
  }
}

// First Page for Section 01 till 08

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
        backgroundColor: Colors.brown,
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
                      "Text Fild & Animation Container",
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
                              builder: (builder) => ListTileWidget()));
                    },
                    child: Text(
                      "List Tile",
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
                              builder: (builder) => ListViewWidget()));
                    },
                    child: Text(
                      "List View",
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
                              builder: (builder) => GridViewWidget()));
                    },
                    child: Text(
                      "Grid View",
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
                              builder: (builder) => HeroWidget()));
                    },
                    child: Text(
                      "Hero",
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
                              builder: (builder) => AnimatedIconWidget()));
                    },
                    child: Text(
                      "Animated Icon",
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

// Second Page for Section 09

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "لطفا مسیر خود را انتخاب کنید",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ),
      ),
    );
  }
}
