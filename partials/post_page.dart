import 'package:staurolite/staurolite.dart';
import 'author_view.dart';
import 'pageBase.dart';

class PostPage {

  PostPage({
    required this.text,
    required this.title,
    required this.path,
    this.description,
    this.image,
  });

  final String text;
  final String title;
  final String path;
  final String? description;
  final String? image;

  HtmlDoc toHtmlDoc() {
    List<HtmlWidget> addToHead = [
      Meta(
        property: "og:title",
        content: title,
      ),
    ];

    if (description != null) {
      addToHead += [
        Meta(
          property: "og:description",
          content: description,
        ),
      ];
    }
    if (image != null) {
      addToHead += [
        Meta(
          property: "og:image",
          content: image,
        ),
      ];
    }

    return PageBase(
      path: "$path/index.html",
      title: "Customrombay.org - $title",
      listOfHeadWidgets: addToHead,
      listOfWidgets: [
        Article(
          properties: "prose lg:prose-xl mx-auto my-8 dark:prose-dark px-4",
          children:[
            MarkdownElement(markdown: text),
            AuthorView()
          ]
        )
      ]
    ).toHtmlDoc();
  }
}