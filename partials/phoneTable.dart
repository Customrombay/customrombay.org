import '../dbml/lib/dbml.dart';
import 'romForDevice.dart';

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
          romNotes: rom.romNotes
        )
      ];
    }

    return Table(
      widgets: listInTable
    ).toHTML();
  }
}

class RomInfoRow extends HtmlWidget {
  RomInfoRow({
    required this.romName,
    required this.romSupport,
    required this.romState,
    required this.androidVersion,
    required this.romNotes
  });

  String romName = "";
  bool romSupport = false;
  String romState = ""; //eg "Unofficial", "Beta"
  String androidVersion = "";
  String romNotes = "";

  String toHTML() {
    return TableRow(
      widgets: [
        TableData(
          widgets: [
            Paragraph(
              text: romName
            )
          ]
        ),
        TableData(
          widgets: [
            Paragraph(
              widget_class: "text-right",
              text: romDataGen(
                romSupport,
                romState,
                androidVersion,
                romNotes
              )
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
      if (androidVersion == ""){
        return output;
      }
      else {
        output += " (Android: $androidVersion)";
        return output;
      }
    }
    else {
      output = romState;
      if (androidVersion == "") {
        return output;
      }
      else {
        output += " (Android: $androidVersion)";
        return output;
      }
    }
  }
}