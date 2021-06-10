import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text(
              "Hello, can you hear me?",
              style: TextStyle(fontSize: 10),
            ),
          ),
        ),
      ),
    );
  }
}
