# Nguyễn Thành Nhân
# 21IT502
# 21JIT

## Tổng quan

Dự án này bao gồm các bài lab về phát triển ứng dụng di động sử dụng Flutter.

## Cài đặt Flutter

### Bước 1: Tải và cài đặt Flutter SDK

1. Truy cập trang [Flutter SDK](https://flutter.dev/docs/get-started/install) và tải phiên bản phù hợp với hệ điều hành của bạn.
2. Giải nén tệp đã tải về và thêm đường dẫn `flutter/bin` vào biến môi trường `PATH`.

### Bước 2: Kiểm tra cài đặt Flutter

Mở terminal và chạy lệnh sau để kiểm tra cài đặt Flutter:

```sh
flutter doctor
```
Lệnh này sẽ kiểm tra các thành phần cần thiết cho việc phát triển ứng dụng Flutter và hiển thị trạng thái của chúng.

Cài đặt máy ảo
Bước 1: Cài đặt Android Studio
Tải và cài đặt Android Studio.
Mở Android Studio và cài đặt các thành phần cần thiết như Android SDK, Android SDK Platform-Tools, và Android Emulator.
Bước 2: Cấu hình máy ảo (AVD)
Mở Android Studio và chọn AVD Manager từ menu Tools.
Tạo một thiết bị ảo mới bằng cách nhấn Create Virtual Device.
Chọn loại thiết bị và phiên bản hệ điều hành Android mà bạn muốn sử dụng.
Hoàn tất quá trình tạo máy ảo và khởi động máy ảo.
Bước 3: Kết nối máy ảo với Flutter
```sh
flutter devices
```
Mở terminal và chạy lệnh sau để kiểm tra kết nối với máy ảo:

Lệnh này sẽ liệt kê các thiết bị kết nối, bao gồm cả máy ảo.

Chạy ứng dụng Flutter
Mở terminal và điều hướng đến thư mục dự án.
Chạy lệnh sau để khởi động ứng dụng trên máy ảo:
```sh
flutter run
```
Tài liệu tham khảo
 - Flutter Documentation
 - Android Studio Documentation