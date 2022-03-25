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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animation Container"),
      ),
      body: Container(
        padding: EdgeInsets.all(9),
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: _width,
                height: _height,
                color: _color,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
