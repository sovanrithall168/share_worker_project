import 'dart:math';
import 'package:flutter/material.dart';
import 'package:share_worker_project/display_page.dart';
import 'shared_worker.dart'; // Import the shared_worker.dart file
import 'dart:js' as js;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Worker Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => DisplayScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shared Worker Example')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  final random = Random();
                  int q = random.nextInt(101);
                  handleClickData(q.toString());
                },
                child: Text("Click Update"))
          ],
        ),
      ),
    );
  }
}
