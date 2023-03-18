class RecoveryForDevice {
  RecoveryForDevice ({
    required this.recoveryName,
    required this.recoverySupport,
    required this.recoveryState,
    this.recoveryNotes,
    this.recoveryWebpage,
    this.deviceWebpage
  });

  String recoveryName;
  bool recoverySupport;
  String recoveryState;
  String? recoveryNotes;
  String? recoveryWebpage;
  String? deviceWebpage;
}