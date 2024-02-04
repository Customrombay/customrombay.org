import 'package:staurolite/staurolite.dart';

import '../utils/getDeviceImagePath.dart';

import 'device.dart';
import 'generate_description_for_device.dart';
import 'phoneTable.dart';
import 'recovery_table.dart';
import 'linux_table.dart';
import 'pageBase.dart';

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
    listOfRecoveries: [],
    listOfLinuxDistributions: [],
  );

  Future<HtmlDoc> toHtmlDoc() async {
    List<HtmlWidget> addToHead = [
      Meta(
        property: "og:title",
        content: "Custom ROMs for ${device.deviceVendor} ${device.deviceModelName} - ${device.deviceName}",
      ),
      Meta(
        property: "og:description",
        content: "View the list of custom ROMs, recoveries and Linux distributions available for ${device.deviceVendor} ${device.deviceModelName} (${device.deviceName}).",
      ),
      Meta(
        property: "og:image",
        content: await getDeviceImagePath("${device.deviceVendor.replaceAll(" ", "").toLowerCase()}-${device.deviceName}", "medium"),
      ),
    ];

    return PageBase(
      path: "/${device.deviceVendor.toLowerCase()}-${device.deviceName}/index.html",
      title: "CustomRomBay.org - ${device.deviceName}",
      description: "${device.deviceVendor} ${device.deviceModelName}",
      listOfHeadWidgets: addToHead,
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
            Paragraph(
              text: generateDescriptionForDevice(device)
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
              text: "There are no custom ROMs available for ${device.deviceName} at this moment. If you found one, make sure to ${Hyperlink(href: "https://customrombay.org/contributing/", text: "add it").toHTML()} to ${Hyperlink(href: "https://customrombay.org/", text: "customrombay.org").toHTML()}. You can also try ${Hyperlink(text: "installing a GSI ROM", href:"/posts/gsi_roms/").toHTML()} on your device."
            ),
            device.listOfRoms.length > 0
            ? PhoneTable(
              listOfRoms: device.listOfRoms
            )
            : null,
            device.listOfRoms.length > 0
            ? Paragraph(
              text: "Haven't found your favorite ROM? You can try ${Hyperlink(text: "installing it as a GSI", href: "/posts/gsi_roms/").toHTML()}!"
            )
            : null,
            // CustomComponent(
            //   html: """<div><script src="https://cdn.prplads.com/agent.js?publisherId=95d8c0eb4d31ad8972e400ce8b2736db:756cb357266ee67ce3af46682e6ab011e7989a150372cdc74cd326319dd3eac7be11adc5061290fec8770e26e1a17b15d3605bc7c84b1c47d0b29305a4a02d97" data-pa-tag defer></script></div>"""
            // ),
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
            // CustomComponent(
            //   html: """<div><script src="https://cdn.prplads.com/agent.js?publisherId=95d8c0eb4d31ad8972e400ce8b2736db:756cb357266ee67ce3af46682e6ab011e7989a150372cdc74cd326319dd3eac7be11adc5061290fec8770e26e1a17b15d3605bc7c84b1c47d0b29305a4a02d97" data-pa-tag defer></script></div>"""
            // ),
            device.listOfLinuxDistributions.length > 0 ?  Heading(
              level: 2,
              text: "Linux distributions"
            ) : null,
            device.listOfLinuxDistributions.length > 0 ? Paragraph(
              text: "The following Linux distributions support ${device.deviceName}:"
            ) : null,
            device.listOfLinuxDistributions.length > 0 ? LinuxTable(
              listOfLinuxDistributions: device.listOfLinuxDistributions
            ) : null,
            Div(
              properties: "grid place-content-center",
              children: [
                Image(
                  src: await getDeviceImagePath("${device.deviceVendor.replaceAll(" ", "").toLowerCase()}-${device.deviceName}", "medium"),
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