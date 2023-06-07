import 'romForDevice.dart';
import 'package:staurolite/staurolite.dart';

class PhoneTable extends HtmlWidget {
  PhoneTable({
    required this.listOfRoms
  });

  List<RomForDevice> listOfRoms = [];

  String toHTML() {
    List<RomInfoRow> listInTable = [];

    for (var rom in listOfRoms) {
      listInTable += [
        RomInfoRow(
          romName: rom.romName,
          romSupport: rom.romSupport,
          romState: rom.romState,
          androidVersion: rom.androidVersion,
          romNotes: rom.romNotes,
          romWebpage: rom.romWebpage,
          phoneWebpage: rom.phoneWebpage
        )
      ];
    }

    return Table(
      children: listInTable
    ).toHTML();
  }
}

class RomInfoRow extends HtmlWidget {
  RomInfoRow({
    required this.romName,
    required this.romSupport,
    required this.romState,
    required this.androidVersion,
    required this.romNotes,
    this.romWebpage,
    this.phoneWebpage
  });

  String romName = "";
  bool romSupport = false;
  String romState = ""; //eg "Unofficial", "Beta"
  String androidVersion = "";
  String romNotes = "";
  String? romWebpage;
  String? phoneWebpage;

  String toHTML() {
    return TableRow(
      children: [
        TableData(
          children: [
            Hyperlink(
              properties: "text-xl no-underline",
              text: romName,
              href: romWebpage
            )
          ]
        ),
        TableData(
          children: [
            Paragraph(
              properties: "text-right text-xl",
              text: """${Hyperlink(
                properties: "no-underline",
                text: romDataGen(
                romSupport,
                romState,
                androidVersion,
                romNotes
              ),
              href: phoneWebpage).toHTML()}""",
            )
          ]
        )
      ]
    ).toHTML();
  }
}

String romDataGen(bool romSupport, String romState, String androidVersion, String romNotes) {
  String output = "";
  if (!romSupport) {
    output = "No";
    return output;
  }
  else {
    if (romState == "") {
      output = "Yes";
      if ((androidVersion == "" || androidVersion == "null") && (romNotes == "" || romNotes == "null")){
        return output;
      }
      else if (androidVersion != "" && androidVersion != "null") {
        output += " (Android: $androidVersion)";
        return output;
      }
      else {
        output += " ($romNotes)";
        return output;
      }
    }
    else {
      output = romState;
      if ((androidVersion == "" || androidVersion == "null") && (romNotes == "" || romNotes == "null")){
        return output;
      }
      else if (androidVersion != "" && androidVersion != "null") {
        output += " (Android: $androidVersion)";
        return output;
      }
      else {
        output += " ($romNotes)";
        return output;
      }
    }
  }
}