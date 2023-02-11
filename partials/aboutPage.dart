import 'package:staurolite/staurolite.dart';
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
          properties: "prose lg:prose-lg mx-auto my-8 dark:prose-dark px-4",
          children:[
            MarkdownElement(markdown: text)
          ]
        )
      ]
    ).toHtmlDoc();
  }
}