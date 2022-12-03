import '../dbml/lib/dbml.dart';
import 'pageBase.dart';

class ContributingPage {

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "/contributing/index.html",
      title: "CustomRomBay.org - contributing",
      listOfWidgets: [
        Article(
          widget_class: "prose lg:prose-lg mx-auto my-8 dark:prose-dark px-4",
          widgets:[
            Heading(
              level: 1,
              widget_class: "text-2xl font-bold mb-2",
              text: "Contributing"
            ),
            Paragraph(
              text: "Something about contributing to the project"
            ),
          ]
        )
      ]
    ).toHtmlDoc();
  }
}