import 'package:flutter/material.dart';

class AnimationContainerWidget extends StatefulWidget {
  const AnimationContainerWidget({Key? key}) : super(key: key);

  @override
  _AnimationContainerWidgetState createState() =>
      _AnimationContainerWidgetState();
}

class _AnimationContainerWidgetState extends State<AnimationContainerWidget> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.black87;
  TextEditingController _widthController = new TextEditingController();
  TextEditingController _heightController = new TextEditingController();
  bool _switch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Fild & Animation Container"),
      ),
      body: Container(
        padding: EdgeInsets.all(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  width: _width,
                  height: _height,
                  color: _color,
                  duration: Duration(seconds: 1),
                  child: Image.asset(
                    "assets/images/avatar.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: 221,
                  height: 42,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(vertical: 7),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: Center(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _widthController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Width Size"))),
                ),
                Container(
                  width: 221,
                  height: 42,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(vertical: 7),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: Center(
                      child: TextField(
                          keyboardType: TextInputType.number,
                          controller: _heightController,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Height Size"))),
                ),
                Container(
                  width: 151,
                  height: 42,
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  margin: EdgeInsets.symmetric(vertical: 7),
                  decoration: BoxDecoration(color: Colors.red),
                  child: InkWell(
                    onTap: () {
                      String _widthString = _widthController.text;
                      _width = double.parse(_widthString);

                      String _heightString = _heightController.text;
                      _height = double.parse(_heightString);

                      _color = Colors.yellow;
                      setState(() {});
                    },
                    child: Center(
                        child: Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _switch = !_switch;
                    setState(() {});
                  },
                  child: Container(
                    width: 121,
                    height: 42,
                    padding: EdgeInsets.symmetric(horizontal: 4),
                    margin: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(500),
                      color:
                          _switch ? Colors.green : Colors.blue.withOpacity(0.7),
                    ),
                    child: AnimatedAlign(
                        duration: Duration(milliseconds: 450),
                        alignment: _switch
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          width: 37,
                          height: 37,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _switch ? Colors.blue : Colors.red,
                          ),
                        )),
                  ),
                ),
                Switch(
                    value: _switch,
                    onChanged: (bool? s) {
                      _switch = s!;
                      setState(() {});
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
