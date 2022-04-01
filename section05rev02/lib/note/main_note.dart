import 'package:flutter/material.dart';
import 'package:section05rev02/helper/shared_helper.dart';
import 'package:section05rev02/note/widgets/first_page_dialog.dart';

class MainNotePage extends StatefulWidget {
  MainNotePage({Key? key}) : super(key: key);

  @override
  State<MainNotePage> createState() => _MainNotePageState();
}

class _MainNotePageState extends State<MainNotePage> {
  String _welcome = "";
  String _name = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      _handleNameState();
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
        actions: [
          IconButton(
              onPressed: () {
                _deleteName();
              },
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "خوش آمدید ${_name} به برنامه ما",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }

  void _showNameDialog() async {
    var dialog = await showDialog(
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
    _handleNameState();
  }

  void _handleNameState() async {
    SharedHelper sharedHelper = SharedHelper();
    await sharedHelper.init();
    _name = sharedHelper.getName();
    if (_name.isEmpty) {
      _showNameDialog();
    }
    setState(() {});
  }

  void _deleteName() async {
    SharedHelper sharedHelper = SharedHelper();
    await sharedHelper.init();
    sharedHelper.deletename();
  }
}
