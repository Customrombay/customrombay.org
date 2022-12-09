import 'package:dbml/dbml.dart';
import 'pageBase.dart';

class AboutPage {

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "/about/index.html",
      title: "CustomRomBay.org - about",
      listOfWidgets: [
        Article(
          widget_class: "prose lg:prose-lg mx-auto my-8 dark:prose-dark px-4",
          widgets:[
            Heading(
              level: 1,
              widget_class: "text-2xl font-bold mb-2",
              text: "About"
            ),
            Paragraph(
              text: "Something about the project"
            ),
          ]
        )
      ]
    ).toHtmlDoc();
  }
}