import 'package:staurolite/staurolite.dart';
import 'device.dart';
import 'phoneTable.dart';
import 'pageBase.dart';
import '../utils/getDeviceImagePath.dart';

class DevicePage {
  DevicePage ({
    required this.device
  });

  Device device = Device(
    deviceName: "",
    deviceVendor: "",
    deviceModelName: "",
    deviceDescription: "",
    listOfRoms: []
  );

  Future<HtmlDoc> toHtmlDoc() async {
    return PageBase(
      path: "/${device.deviceVendor.toLowerCase()}-${device.deviceName}/index.html",
      title: "CustomRomBay.org - ${device.deviceName}",
      description: "${device.deviceVendor} ${device.deviceModelName}",
      listOfWidgets: [
        Article(
          properties: "prose lg:prose-lg mx-auto mb-8 dark:prose-dark px-4",
          children:[
            Heading(
              level: 1,
              properties: "text-2xl font-bold mb-2",
              text: "${device.deviceVendor} ${device.deviceModelName}"
            ),
//             Style(
//               css: """img {
// margin-bottom: 0.7em!important;
// }""",
//             ),
            Paragraph(
              text: device.deviceDescription
            ),
            PhoneTable(
              listOfRoms: device.listOfRoms
            ),
            Div(
              properties: "grid place-content-center",
              children: [
                Image(
                  src: await getDeviceImagePath("${device.deviceVendor.toLowerCase()}-${device.deviceName}", "medium")
                )
              ]
            ),
          ]
        )
      ]
    ).toHtmlDoc();
  }
}