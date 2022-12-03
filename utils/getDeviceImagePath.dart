import 'dart:io';

Future<String> getDeviceImagePath(String devicePath, String mode) async {
  if (await File("static/images/$mode/$devicePath.webp").exists()) {
    return "/images/$mode/$devicePath.webp";
  }
  else if (await File("static/images/$mode/$devicePath.png").exists()) {
    return "/images/$mode/$devicePath.png";
  }
  else if (await File("static/images/$mode/$devicePath.jpg").exists()) {
    return "/images/$mode/$devicePath.jpg";
  }
  else if (await File("static/images/$mode/$devicePath.jpeg").exists()) {
    return "/images/$mode/$devicePath.jpeg";
  }
  else {
    return "/phone.png";
  }
} 