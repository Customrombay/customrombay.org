import 'romForDevice.dart';
import 'recovery_for_device.dart';

class Device {
  Device ({
    required this.deviceName,
    required this.deviceVendor,
    required this.deviceModelName,
    required this.deviceDescription,
    required this.listOfRoms,
    required this.listOfRecoveries
  });

  String deviceName = "";
  String deviceVendor = "";
  String deviceModelName = "";
  String deviceDescription = "";
  List<RomForDevice> listOfRoms = [];
  List<RecoveryForDevice> listOfRecoveries = [];
}