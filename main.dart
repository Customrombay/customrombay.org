import 'package:staurolite/staurolite.dart';
import 'partials/devicePage.dart';
import 'partials/device.dart';
import 'partials/romForDevice.dart';
import 'partials/recovery_for_device.dart';
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
          path: "/index.html",
          title: "Customrombay.org",
          listOfWidgets: [
            Article(
              properties: "mx-auto p-6 text-center",
              children:[
                Heading(
                  level: 1,
                  properties: "text-3xl font-bold lg:text-5xl mx-5 text-center",
                  text: "Welcome to Customrombay.org!"
                ),
  //               Style(
  //                 css: """img {
  //   margin-bottom: 0.7em!important;
  // }""",
  //               ),
                Paragraph(
                  properties: "text-xl lg:text-2xl mt-8 mx-5 text-center",
                  text: "A place to find all custom ROMs available for your device."
                ),
                Heading(
                  level: 2,
                  properties: "text-xl font-bold lg:text-3xl mx-5 text-center",
                  text: "We already support ${(await listOfDevices()).length} devices!"
                ),
              ]
            ),
            Div(
              properties: "container p-6 mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 lg:gap-8",
              children: await deviceShows()
            )
          ]
        ).toHtmlDoc(),
        AboutPage(text: await getAboutDetails()).toHtmlDoc(),
        ContributingPage(text: await getContributingDetails()).toHtmlDoc()
      ] + await renderDevicePages()
    ),
    "tailwind.config.js"
  );
}

Future<List<HtmlDoc>> renderDevicePages() async {
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
    print(deviceFile.path);
    YamlMap ydoc = loadYaml(deviceFileContent);
    List<RomForDevice> listOfRoms = [];
    for (var rom in ydoc["roms"]) {
      //print(rom.runtimeType);
      listOfRoms += [
        RomForDevice(
          romName: rom["rom-name"],
          romSupport: rom["rom-support"],
          romState: rom["rom-state"],
          androidVersion: rom["android-version"].toString(),
          romNotes: rom["rom-notes"] ?? "",
          romWebpage: rom["rom-webpage"],
          phoneWebpage: rom["phone-webpage"]
        )
      ];
    }
    List<RecoveryForDevice> listOfRecoveries =[];
    if (ydoc.containsKey("recoveries")) {
      if (ydoc["recoveries"] != null) {
        for (YamlMap recovery in ydoc["recoveries"]) {
          listOfRecoveries += [
            RecoveryForDevice(
              recoveryName: recovery["recovery-name"],
              recoverySupport: recovery["recovery-support"],
              recoveryState: recovery["recovery-state"],
              recoveryWebpage: recovery["recovery-webpage"],
              deviceWebpage: recovery["device-webpage"]
            )
          ];
        }
      }
    }

    listOfDevices += [
      Device(
        deviceName: ydoc["device-name"],
        deviceVendor: ydoc["device-vendor"],
        deviceModelName: ydoc["device-model-name"].toString(),
        deviceDescription: ydoc["device-description"] ?? "",
        listOfRoms: listOfRoms,
        listOfRecoveries: listOfRecoveries
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
    String deviceText = "";
    if (vendor.listOfDevices.length > 1) {
      deviceText = "devices";
    }
    else {
      deviceText = "device";
    }
    listOfShows += [
      Div(
        properties: "col-span-1 md:col-span-2 lg:col-span-3 text-3xl font-semibold",
        children: [
          Paragraph(
            text: "${vendor.vendorName}: ${vendor.listOfDevices.length} $deviceText"
          )
        ]
      )
    ];
    for (var device in listOfThisDevices) {
      listOfShows += [
        Div(
          properties: "p-2",
          children: [
            Hyperlink(
              href: "/${device.deviceVendor.toLowerCase()}-${device.deviceName}/",
              children: [
                Div(
                  properties: "grid place-content-center",
                  children: [
                    Image(
                      src: await getDeviceImagePath("${device.deviceVendor.toLowerCase()}-${device.deviceName}", "small"),
                      properties: "rounded-lg shadow-sm h-52 object-cover",
                      loading: isFirst ? "" : "lazy",
                      alt: "${device.deviceVendor.toLowerCase()}-${device.deviceName}"
                    )
                  ]
                ),
                Div(
                  properties: "my-2 text-xl font-semibold text-center",
                  children: [
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

Future<String> getContributingDetails() async {
  File contributingFile = File("CONTRIBUTING.md");
  String content = await contributingFile.readAsString();
  return content;
}

Future<String> getAboutDetails() async {
  File aboutFile = File("README.md");
  String content = await aboutFile.readAsString();
  content = content.replaceAll("static/", "/");
  return content;
}