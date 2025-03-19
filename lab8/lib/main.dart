import 'package:flutter/material.dart';

void main() {
  runApp(BMICalculator());
}

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BMIScreen(),
    );
  }
}

class BMIScreen extends StatefulWidget {
  @override
  _BMIScreenState createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  String result = "";

  void calculateBMI() {
    double height = double.tryParse(heightController.text) ?? 0;
    double weight = double.tryParse(weightController.text) ?? 0;
    
    if (height > 0 && weight > 0) {
      double bmi = weight / (height * height);
      String classification = "";

      if (bmi < 18.5) {
        classification = "Thiếu cân";
      } else if (bmi >= 18.5 && bmi < 24.9) {
        classification = "Bình thường";
      } else {
        classification = "Thừa cân";
      }

      setState(() {
        result = "BMI: ${bmi.toStringAsFixed(2)} - $classification";
      });
    } else {
      setState(() {
        result = "Vui lòng nhập đúng chiều cao và cân nặng";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI Calculator"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              key: Key('heightField'),
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Chiều cao (m)"),
            ),
            TextField(
              key: Key('weightField'),
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Cân nặng (kg)"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              key: Key('calculateButton'),
              onPressed: calculateBMI,
              child: Text("Tính BMI"),
            ),
            SizedBox(height: 20),
            Text(
              result,
              key: Key('resultText'),
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
