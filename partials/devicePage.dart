import 'package:staurolite/staurolite.dart';
import 'device.dart';
import 'phoneTable.dart';
import 'recovery_table.dart';
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
    listOfRoms: [],
    listOfRecoveries: []
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
              text: "${device.deviceVendor} ${device.deviceModelName} (${device.deviceName})"
            ),
            Paragraph(
              text: device.deviceDescription
            ),
            Heading(
              level: 2,
              text: "Custom ROMs"
            ),
            device.listOfRoms.length > 0
            ? Paragraph(
              text: "The following custom ROMs support ${device.deviceName}:"
            )
            : Paragraph(
              text: "There are no custom ROMs available for ${device.deviceName} at this moment. If you found one, make sure to ${Hyperlink(href: "https://customrombay.org/contributing/", text: "add it").toHTML()} to ${Hyperlink(href: "https://customrombay.org/", text: "customrombay.org").toHTML()}."
            ),
            device.listOfRoms.length > 0
            ? PhoneTable(
              listOfRoms: device.listOfRoms
            )
            : null,
            device.listOfRecoveries.length > 0 ?  Heading(
              level: 2,
              text: "Custom recoveries"
            ) : null,
            device.listOfRecoveries.length > 0 ?  Paragraph(
              text: "The following custom recoveries support ${device.deviceName}:"
            ) : null,
            device.listOfRecoveries.length > 0 ?  RecoveryTable(
              listOfRecoveries: device.listOfRecoveries
            ) : null,
            Div(
              properties: "grid place-content-center",
              children: [
                Image(
                  src: await getDeviceImagePath("${device.deviceVendor.toLowerCase()}-${device.deviceName}", "medium"),
                  alt: "${device.deviceVendor.toLowerCase()}-${device.deviceName}"
                )
              ]
            ),
          ]
        )
      ]
    ).toHtmlDoc();
  }
}