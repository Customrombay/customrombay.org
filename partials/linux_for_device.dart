class LinuxForDevice {
  LinuxForDevice ({
    required this.distributionName,
    required this.distributionSupport,
    required this.distributionState,
    required this.distributionNotes,
    this.distributionWebpage,
    this.deviceWebpage
  });

  String distributionName = "";
  bool distributionSupport = false;
  String distributionState = "";
  String distributionNotes = "";
  String? distributionWebpage;
  String? deviceWebpage;
}