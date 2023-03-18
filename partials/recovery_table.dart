import "recovery_for_device.dart";
import 'package:staurolite/staurolite.dart';

class RecoveryTable extends HtmlWidget {
  RecoveryTable({
    required this.listOfRecoveries
  });

  List<RecoveryForDevice> listOfRecoveries = [];

  String toHTML() {
    List<RecoveryInfoRow> listInTable = [];

    for (RecoveryForDevice recovery in listOfRecoveries) {
      listInTable += [
        RecoveryInfoRow(
          recoveryName: recovery.recoveryName,
          recoverySupport: recovery.recoverySupport,
          recoveryState: recovery.recoveryState,
          recoveryNotes: recovery.recoveryNotes,
          recoveryWebpage: recovery.recoveryWebpage,
          deviceWebpage: recovery.deviceWebpage
        )
      ];
    }

    return Table(
      children: listInTable
    ).toHTML();
  }
}

class RecoveryInfoRow extends HtmlWidget {
  RecoveryInfoRow({
    required this.recoveryName,
    required this.recoverySupport,
    required this.recoveryState,
    this.recoveryNotes,
    this.recoveryWebpage,
    this.deviceWebpage
  });

  String recoveryName;
  bool recoverySupport;
  String recoveryState; //eg "Unofficial", "Beta"
  String? recoveryNotes;
  String? recoveryWebpage;
  String? deviceWebpage;

  String toHTML() {
    return TableRow(
      children: [
        TableData(
          children: [
            Hyperlink(
              properties: "text-xl no-underline",
              text: recoveryName,
              href: recoveryWebpage
            )
          ]
        ),
        TableData(
          children: [
            Paragraph(
              properties: "text-right text-xl",
              text: """${Hyperlink(
                properties: "no-underline",
                text: recoverySupport ? recoveryState : "Unsupported",
                href: deviceWebpage).toHTML()}""",
            )
          ]
        )
      ]
    ).toHTML();
  }
}
