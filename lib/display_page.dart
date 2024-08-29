import 'package:flutter/material.dart';
import 'package:share_worker_project/shared_worker.dart';



class DisplayScreen extends StatefulWidget {
  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {

     dynamic initData = "init Data";

  @override
  void initState() {
    super.initState();
    setupSharedWorker((data) {
      setState(() {
        initData = data;
      });
    }); // Initialize the Shared Worker
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(initData)
          ],
        ),
      ),
    );
  }
}