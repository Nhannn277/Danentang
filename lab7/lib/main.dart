import 'package:flutter/material.dart';

void main() {
  runApp(StoryGame());
}

class StoryGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: StoryScreen(),
    );
  }
}

class StoryScreen extends StatefulWidget {
  @override
  _StoryScreenState createState() => _StoryScreenState();
}

class _StoryScreenState extends State<StoryScreen> {
  int storyIndex = 0;

  final List<Map<String, dynamic>> storyData = [
    {
      'story': 'Bạn đang đi trong rừng và nhìn thấy một con đường phân nhánh. Bạn sẽ đi hướng nào?',
      'choice1': 'Đi bên trái',
      'choice2': 'Đi bên phải',
      'next1': 1,
      'next2': 2,
    },
    {
      'story': 'Bạn thấy một túp lều bỏ hoang. Bạn có muốn vào trong không?',
      'choice1': 'Bước vào trong',
      'choice2': 'Bỏ đi',
      'next1': 3,
      'next2': 4,
    },
    {
      'story': 'Bạn phát hiện một dòng suối chảy xiết. Bạn có muốn thử băng qua không?',
      'choice1': 'Cố gắng băng qua',
      'choice2': 'Tìm đường vòng',
      'next1': 4,
      'next2': 5,
    },
    {
      'story': 'Bạn tìm thấy một kho báu ẩn giấu! Chúc mừng bạn!',
      'choice1': 'Chơi lại',
      'choice2': '',
      'next1': 0,
      'next2': 0,
    },
    {
      'story': 'Bạn lạc trong rừng và không tìm thấy đường ra. Trò chơi kết thúc.',
      'choice1': 'Chơi lại',
      'choice2': '',
      'next1': 0,
      'next2': 0,
    },
    {
      'story': 'Bạn tìm thấy một con đường an toàn về nhà. Bạn đã sống sót!',
      'choice1': 'Chơi lại',
      'choice2': '',
      'next1': 0,
      'next2': 0,
    },
  ];

  void nextStory(int choice) {
    setState(() {
      storyIndex = choice == 1 ? storyData[storyIndex]['next1'] : storyData[storyIndex]['next2'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Trò Chơi Kể Chuyện')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              storyData[storyIndex]['story'],
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => nextStory(1),
              child: Text(storyData[storyIndex]['choice1']),
            ),
            if (storyData[storyIndex]['choice2'].isNotEmpty)
              ElevatedButton(
                onPressed: () => nextStory(2),
                child: Text(storyData[storyIndex]['choice2']),
              ),
          ],
        ),
      ),
    );
  }
}
