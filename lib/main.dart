import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tes"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Text("Halo Wrlod"),
              color: Colors.red[50],
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Halo World"),
              color: Colors.green[50],
              padding: EdgeInsets.all(16.0),
            ),
            Container(
              child: Text("Halo Wrold"),
              color: Colors.blue[50],
              padding: EdgeInsets.all(16.0),
            ),
          ],
        ));
  }
}
