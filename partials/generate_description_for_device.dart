import 'device.dart';

String generateDescriptionForDevice(Device device) {
  String deviceDescription = "";
  if (device.deviceSpecs != null) {
    if (device.deviceSpecs!.soc != null && device.deviceSpecs!.gpu != null) {
      deviceDescription += "${device.deviceVendor} ${device.deviceModelName} is powered by the ${device.deviceSpecs!.soc!} CPU and equipped with the ${device.deviceSpecs!.gpu!} GPU.";
      if (device.deviceSpecs!.ram != null && device.deviceSpecs!.storage != null) {
        deviceDescription += " It has ${device.deviceSpecs!.ram!} of RAM and ${device.deviceSpecs!.storage!} of internal storage.";
        if (device.deviceSpecs!.battery != null && device.deviceSpecs!.battery!["capacity"] != null && device.deviceSpecs!.battery!["removable"] != null && device.deviceSpecs!.battery!["removable"] is bool && device.deviceSpecs!.battery!["tech"] != null) {
          if (device.deviceSpecs!.battery!["removable"]!) {
            deviceDescription += " Its ${device.deviceSpecs!.battery!["tech"]} battery is removable and has a capacity of ${device.deviceSpecs!.battery!["capacity"]!} mAh.";
          }
          else {
            deviceDescription += " Its ${device.deviceSpecs!.battery!["tech"]} battery is non-removable and has a capacity of ${device.deviceSpecs!.battery!["capacity"]!} mAh.";
          }
        }
        if (device.deviceSpecs!.release != null) {
          deviceDescription += " ${generateReleaseDateString(device.deviceSpecs!.release!)}";
        }
      }
    }
  }
  return deviceDescription;
}

String generateReleaseDateString(String releaseDate) {
  if (releaseDate.contains("-")){
    List<String> listOfDates = releaseDate.split("-");
    if (listOfDates.length == 3) {
      return "It was released on ${monthNameFromNumber(listOfDates[1])} ${listOfDates[2]}, ${listOfDates[0]}.";
    }
    return "It was released in ${monthNameFromNumber(listOfDates[1])} ${listOfDates[0]}.";
  }
  return "It was released in ${releaseDate}.";
}

String monthNameFromNumber(String numberName) {
  int monthNumber = int.parse(numberName);
  List<String> listOfMonths = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  return listOfMonths[monthNumber - 1];
}