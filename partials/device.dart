import 'romForDevice.dart';
import 'recovery_for_device.dart';
import 'linux_for_device.dart';
import 'device_specs.dart';

class Device {
  Device ({
    required this.deviceName,
    required this.deviceVendor,
    required this.deviceModelName,
    required this.deviceDescription,
    this.deviceSpecs,
    required this.listOfRoms,
    required this.listOfRecoveries,
    required this.listOfLinuxDistributions,
  });

  String deviceName = "";
  String deviceVendor = "";
  String deviceModelName = "";
  String deviceDescription = "";
  DeviceSpecs? deviceSpecs;
  List<RomForDevice> listOfRoms = [];
  List<RecoveryForDevice> listOfRecoveries = [];
  List<LinuxForDevice> listOfLinuxDistributions = [];
}