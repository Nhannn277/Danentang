import 'package:flutter/material.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatefulWidget {
  @override
  _QuizAppState createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map<String, dynamic>> questions = [
    {'question': 'Flutter sử dụng ngôn ngữ Dart.', 'answer': true},
    {'question': 'Flutter là framework dành riêng cho iOS.', 'answer': false},
    {'question': 'Widget trong Flutter là bất biến.', 'answer': true},
    {'question': 'Flutter hỗ trợ lập trình web.', 'answer': true},
    {'question': 'Dart là ngôn ngữ lập trình hướng đối tượng.', 'answer': true},
  ];

  int questionIndex = 0;
  int score = 0;

  void checkAnswer(bool userAnswer) {
    if (userAnswer == questions[questionIndex]['answer']) {
      score++;
    }

    setState(() {
      questionIndex++;
    });
  }

  void restartQuiz() {
    setState(() {
      questionIndex = 0;
      score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: questionIndex < questions.length
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          questions[questionIndex]['question'],
                          style: TextStyle(fontSize: 22, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                          ),
                          onPressed: () => checkAnswer(true),
                          child: Text("Đúng",
                              style: TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                          ),
                          onPressed: () => checkAnswer(false),
                          child: Text("Sai",
                              style: TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bạn đã hoàn thành quiz!",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 20),
                        Text(
                          "Điểm của bạn: $score/${questions.length}",
                          style: TextStyle(fontSize: 20, color: Colors.yellow),
                        ),
                        SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            padding: EdgeInsets.symmetric(
                                vertical: 15, horizontal: 50),
                          ),
                          onPressed: restartQuiz,
                          child: Text("Chơi lại",
                              style: TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
