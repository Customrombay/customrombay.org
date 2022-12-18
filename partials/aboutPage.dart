import 'package:dbml/dbml.dart';
import 'pageBase.dart';

class AboutPage {

  AboutPage({
    required this.text
  });

  final String text;

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "/about/index.html",
      title: "CustomRomBay.org - about",
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