import 'linux_for_device.dart';
import 'package:staurolite/staurolite.dart';

class LinuxTable extends HtmlWidget {
  LinuxTable({
    required this.listOfLinuxDistributions
  });

  List<LinuxForDevice> listOfLinuxDistributions = [];

  String toHTML() {
    List<DistributionInfoRow> listInTable = [];

    for (LinuxForDevice distribution in listOfLinuxDistributions) {
      listInTable += [
        DistributionInfoRow(
          distributionName: distribution.distributionName,
          distributionSupport: distribution.distributionSupport,
          distributionState: distribution.distributionState,
          distributionNotes: distribution.distributionNotes,
          distributionWebpage: distribution.distributionWebpage,
          deviceWebpage: distribution.deviceWebpage
        )
      ];
    }

    return Table(
      children: listInTable
    ).toHTML();
  }
}

class DistributionInfoRow extends HtmlWidget {
  DistributionInfoRow({
    required this.distributionName,
    required this.distributionSupport,
    required this.distributionState,
    this.distributionNotes,
    this.distributionWebpage,
    this.deviceWebpage
  });

  String distributionName;
  bool distributionSupport;
  String distributionState; //eg "Unofficial", "Beta"
  String? distributionNotes;
  String? distributionWebpage;
  String? deviceWebpage;

  String toHTML() {
    return TableRow(
      children: [
        TableData(
          children: [
            Hyperlink(
              properties: "text-xl no-underline",
              text: distributionName,
              href: distributionWebpage
            )
          ]
        ),
        TableData(
          children: [
            Paragraph(
              properties: "text-right text-xl",
              text: """${Hyperlink(
                properties: "no-underline",
                text: buildLinuxDeviceText(
                  distributionSupport: distributionSupport,
                  distributionState: distributionState,
                  distributionNotes: distributionNotes,
                ),
                href: deviceWebpage).toHTML()}""",
            )
          ]
        )
      ]
    ).toHTML();
  }
}

String buildLinuxDeviceText({
  required bool distributionSupport,
  required String distributionState,
  required String? distributionNotes
}) {
  if (distributionNotes != null) {
    if (distributionNotes != "") {
      if (distributionSupport) {
        return "$distributionState ($distributionNotes)";
      }
      else {
        return "Unsupported ($distributionNotes)";
      }
    }
    else {
      return distributionSupport ? distributionState : "Unsupported";
    }
  }
  else {
    return distributionSupport ? distributionState : "Unsupported";
  }
}