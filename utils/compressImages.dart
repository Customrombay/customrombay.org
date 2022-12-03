import 'dart:io';

void main() async {
  for (var file in await Directory("../static/images/big/").list().toList()) {
    var newpath = file.path.replaceAll("big", "small").replaceAll(".png", ".webp");
    Process.run("convert", [file.path, "-resize", "200", "-quality", "50", newpath]);
  }
}