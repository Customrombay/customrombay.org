import 'package:dbml/dbml.dart';
import 'pageBase.dart';

class ContributingPage {

  ContributingPage({
    required this.text
  });

  final String text;

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "/contributing/index.html",
      title: "CustomRomBay.org - contributing",
      listOfWidgets: [
        Article(
          widget_class: "prose lg:prose-lg mx-auto my-8 dark:prose-dark px-4",
          widgets:[
            MarkdownElement(markdown: text)
          ]
        )
      ]
    ).toHtmlDoc();
  }
}