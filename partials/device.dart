import 'romForDevice.dart';

class Device {
  Device ({
    required this.deviceName,
    required this.deviceVendor,
    required this.deviceModelName,
    required this.deviceDescription,
    required this.listOfRoms
  });

  String deviceName = "";
  String deviceVendor = "";
  String deviceModelName = "";
  String deviceDescription = "";
  List<RomForDevice> listOfRoms = [];
}