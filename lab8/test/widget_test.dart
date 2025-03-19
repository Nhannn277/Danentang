import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab8/main.dart'; // Thay đổi đúng đường dẫn của file main.dart

void main() {
  testWidgets('BMI Calculator Test', (WidgetTester tester) async {
    // Khởi chạy ứng dụng BMI
    await tester.pumpWidget( BMICalculator());

    // Kiểm tra xem có ô nhập liệu hay không
    expect(find.byType(TextField), findsNWidgets(2)); // Kiểm tra có 2 ô nhập liệu

    // Nhập chiều cao vào ô đầu tiên
    await tester.enterText(find.byType(TextField).first, '170');

    // Nhập cân nặng vào ô thứ hai
    await tester.enterText(find.byType(TextField).last, '60');

    // Nhấn nút "Tính BMI"
    await tester.tap(find.text('Tính BMI'));
    await tester.pump(); // Chạy lại giao diện

    // Kiểm tra xem kết quả BMI có xuất hiện không
    expect(find.textContaining('BMI của bạn là:'), findsOneWidget);
  });
}
