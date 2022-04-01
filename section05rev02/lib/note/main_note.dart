import 'package:flutter/material.dart';
import 'package:section05rev02/note/widgets/first_page_dialog.dart';

class MainNotePage extends StatefulWidget {
  MainNotePage({Key? key}) : super(key: key);

  @override
  State<MainNotePage> createState() => _MainNotePageState();
}

class _MainNotePageState extends State<MainNotePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _showNameDialog();
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "دفترچه یادداشت",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
    );
  }

  void _showNameDialog() {
    showDialog(
        context: context,
        builder: (builder) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: FirstPageDialog(),
              )
            ],
          );
        });
  }
}
