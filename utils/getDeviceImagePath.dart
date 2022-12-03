import 'dart:io';

Future<String> getDeviceImagePath(String devicePath) async {
  if (await File("static/$devicePath.png").exists()) {
    return "/$devicePath.png";
  }
  else if (await File("static/$devicePath.jpg").exists()) {
    return "/$devicePath.jpg";
  }
  else if (await File("static/$devicePath.jpeg").exists()) {
    return "/$devicePath.jpeg";
  }
  else if (await File("static/$devicePath.webp").exists()) {
    return "/$devicePath.webp";
  }
  else {
    return "/phone.png";
  }
} 