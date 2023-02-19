class RomForDevice {
  RomForDevice ({
    required this.romName,
    required this.romSupport,
    required this.romState,
    required this.androidVersion,
    required this.romNotes,
    this.romWebpage,
    this.phoneWebpage
  });

  String romName = "";
  bool romSupport = false;
  String romState = "";
  String androidVersion = "";
  String romNotes = "";
  String? romWebpage;
  String? phoneWebpage;
}