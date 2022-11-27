import 'dart:ffi';

class RomForDevice {
  RomForDevice ({
    required this.romName,
    required this.romSupport,
    required this.romState,
    required this.androidVersion,
    required this.romNotes
  });

  String romName = "";
  bool romSupport = false;
  String romState = "";
  String androidVersion = "";
  String romNotes = "";
}