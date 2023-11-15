class DeviceSpecs {
  DeviceSpecs ({
    this.soc,
    this.gpu,
    this.ram,
    this.storage,
    this.isABDevice,
    this.screen,
    this.battery,
    this.network,
    this.peripherals,
    this.release,
  });

  String? soc;
  String? gpu;
  String? ram;
  String? storage;
  bool? isABDevice;
  Map? screen;
  Map? battery;
  List? network;
  List? peripherals;
  String? release;
}