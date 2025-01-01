import 'dart:math'; // dùng Random
import 'package:flutter/material.dart';

void main() {
  runApp(Magic8BallApp());
}

class Magic8BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Magic 8 Ball'),
          backgroundColor: Colors.blue[900],
        ),
        backgroundColor: Colors.blue,
        body: Magic8Ball(),
      ),
    );
  }
}

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int ballNumber = 1; // Quả bóng bắt đầu với số 1

  void shakeBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; // Tạo số ngẫu nhiên từ 1 đến 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20.0),
          GestureDetector(
            onTap: shakeBall, // Gọi hàm shakeBall khi nhấn vào hình ảnh
            child: Image.asset('assets/ball$ballNumber.png'), // Hình quả bóng
          ),
        ],
      ),
    );
  }
}
