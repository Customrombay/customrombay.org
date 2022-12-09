import 'dbml/lib/dbml.dart';
import 'partials/devicePage.dart';
import 'partials/device.dart';
import 'partials/romForDevice.dart';
import 'partials/deviceVendor.dart';
import 'partials/pageBase.dart';
import 'partials/aboutPage.dart';
import 'partials/contributingPage.dart';
import 'utils/getDeviceImagePath.dart';
import 'package:yaml/yaml.dart';
import 'dart:io';

void main() async {
  buildWebsite(
    await Website(
      listOfHtml: [
        PageBase(
          path: "index.html",
          title: "Customrombay.org",
          listOfWidgets: [
            Article(
              widget_class: "mx-auto p-6 text-center",
              widgets:[
                Heading(
                  level: 1,
                  widget_class: "text-3xl font-bold lg:text-5xl mx-5 text-center",
                  text: "Welcome to Customrombay.org!"
                ),
  //               Style(
  //                 css: """img {
  //   margin-bottom: 0.7em!important;
  // }""",
  //               ),
                Paragraph(
                  widget_class: "text-xl lg:text-2xl mt-8 mx-5 text-center",
                  text: "A place to find all custom ROMs available for your device."
                )
              ]
            ),
            Div(
              widget_class: "container p-6 mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 lg:gap-8",
              widgets: await deviceShows()
            )
          ]
        ).toHtmlDoc(),
        AboutPage().toHtmlDoc(),
        ContributingPage().toHtmlDoc()
      ] + await renderPoco()
    )
  );
}

Future<List<HtmlDoc>> renderPoco() async {
  List<HtmlDoc> listOfHtmlDoc = [];
  Future<List<Device>> devicesList = listOfDevices();
  for (var device in await devicesList) {
    listOfHtmlDoc += [
      await DevicePage(
        device: device
      ).toHtmlDoc()
    ];
  }

  return listOfHtmlDoc;
}

Future<List<Device>> listOfDevices() async {
  String deviceDirName = "database/phone_data";
  final deviceDir = Directory(deviceDirName);
  List<Device> listOfDevices = [];

  for (var deviceFile in await deviceDir.list().toList()) {
    String deviceFileContent = await File(deviceFile.path).readAsString();
    var ydoc = loadYaml(deviceFileContent);
    List<RomForDevice> listOfRoms = [];
    for (var rom in ydoc["roms"]) {
      //print(rom.runtimeType);
      listOfRoms += [
        RomForDevice(
          romName: rom["rom-name"],
          romSupport: rom["rom-support"],
          romState: rom["rom-state"],
          androidVersion: rom["android-version"].toString(),
          romNotes: rom["rom-notes"] ?? ""
        )
      ];
    }

    listOfDevices += [
      Device(
        deviceName: ydoc["device-name"],
        deviceVendor: ydoc["device-vendor"],
        deviceModelName: ydoc["device-model-name"].toString(),
        deviceDescription: ydoc["device-description"] ?? "",
        listOfRoms: listOfRoms
      )
    ];
  }

  return listOfDevices;
}

Future<List<Div>> deviceShows() async {
  Future<List<Device>> devicesList = listOfDevices();
  List<Div> listOfShows = [];
  List<DeviceVendor> listOfDeviceVendors = [];

  for (var device in await devicesList) {
    var isVendor = false;
    for (var vendor in listOfDeviceVendors) {
      if (device.deviceVendor == vendor.vendorName) {
        isVendor = true;
        vendor.listOfDevices += [device];
      }
    }
    if (!isVendor) {
      listOfDeviceVendors += [
        DeviceVendor(
          vendorName: device.deviceVendor,
          listOfDevices: [device]
        )
      ];
    }
  }

  listOfDeviceVendors.sort((a, b) => a.vendorName.toLowerCase().compareTo(b.vendorName.toLowerCase()));

  bool isFirst = true;
  for (var vendor in listOfDeviceVendors) {
    var listOfThisDevices = vendor.listOfDevices;
    listOfThisDevices.sort((a, b) => a.deviceModelName.toLowerCase().compareTo(b.deviceModelName.toLowerCase()));
    listOfShows += [
      Div(
        widget_class: "col-span-1 md:col-span-2 lg:col-span-3 text-3xl font-semibold",
        widgets: [
          Paragraph(
            text: vendor.vendorName
          )
        ]
      )
    ];
    for (var device in listOfThisDevices) {
      listOfShows += [
        Div(
          widget_class: "p-2",
          widgets: [
            Hyperlink(
              href: "/${device.deviceVendor.toLowerCase()}-${device.deviceName}/",
              widgets: [
                Div(
                  widget_class: "grid place-content-center",
                  widgets: [
                    Img(
                      src: await getDeviceImagePath("${device.deviceVendor.toLowerCase()}-${device.deviceName}", "small"),
                      widget_class: "rounded-lg shadow-sm h-52 object-cover",
                      loading: isFirst ? "" : "lazy",
                      alt: "${device.deviceVendor.toLowerCase()}-${device.deviceName}"
                    )
                  ]
                ),
                Div(
                  widget_class: "my-2 text-xl font-semibold text-center",
                  widgets: [
                    Paragraph(
                      text: "${device.deviceModelName}"
                    ),
                    Paragraph(
                      text: "(${device.deviceName})"
                    )
                  ]
                )
              ]
            )
          ]
        )
      ];
      isFirst = false;
    }
  }

  return listOfShows;
}