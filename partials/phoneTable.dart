import '../dbml/lib/dbml.dart';

class PhoneTable extends HtmlWidget {
  PhoneTable({
    this.val1,
    this.val2
  });

  final String? val1;
  final String? val2;

  String toHTML() {
    return Table(
      widgets: [
        TableRow(
          widgets: [
            TableData(
              widgets: [
                Paragraph(
                  text: val1
                )
              ]
            ),
            TableData(
              widgets: [
                Paragraph(
                  widget_class: "text-right",
                  text: val2
                )
              ]
            )
          ]
        ),
        TableRow(
          widgets: [
            TableData(
              widgets: [
                Paragraph(
                  text: "OK"
                )
              ]
            ),
            TableData(
              widgets: [
                Paragraph(
                  widget_class: "text-right",
                  text: "OK2"
                )
              ]
            )
          ]
        ),
        RomInfoRow(
          romName: "AwakenOS",
          romSupport: true,
          romState: "Official",
          androidVersion: "13",
          romNotes: "")
      ]
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