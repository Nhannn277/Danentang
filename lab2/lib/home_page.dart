import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          CircleAvatar(radius: 50,
          child: Image.network(
            "https://seekicon.com/free-icon-download/flutter_2.png"),

          ),
          const Text("Hello world!"),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('Go to Second Page'),
          ),
        ],
      )),
    );
  }
}