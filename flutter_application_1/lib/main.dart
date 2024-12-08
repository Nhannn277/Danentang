import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'I am rich',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'I am Rich',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.blue, ),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/bitcoin.png', width: 1000, height: 600), 
            ],
          ),
        ),
      ),
    );
  }
}
