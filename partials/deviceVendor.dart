import 'device.dart';

class DeviceVendor {
  DeviceVendor ({
    required this.vendorName,
    required this.listOfDevices
  });

  String vendorName = "";
  List<Device> listOfDevices = [];
}