import 'package:staurolite/staurolite.dart';
import 'pageBase.dart';

class PostPage {

  PostPage({
    required this.text,
    required this.title,
    required this.path
  });

  final String text;
  final String title;
  final String path;

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "$path/index.html",
      title: "Customrombay.org - $title",
      listOfWidgets: [
        Article(
          properties: "prose lg:prose-xl mx-auto my-8 dark:prose-dark px-4",
          children:[
            MarkdownElement(markdown: text)
          ]
        )
      ]
    ).toHtmlDoc();
  }
}