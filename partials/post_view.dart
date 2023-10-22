import 'package:staurolite/staurolite.dart';

class PostView extends Div {

  PostView({
    required this.title,
    required this.path,
    required this.imagePath,
    required this.publishDate
  }): super(
    properties: "p-2",
    children: [
      Hyperlink(
        href: path,
        children: [
          Div(
            properties: "grid place-content-center",
            children: [
              Image(
                src: imagePath,
                properties: "rounded-lg shadow-sm h-52 object-cover",
                loading: "lazy",
                // alt: ""
              )
            ]
          ),
          Div(
            properties: "my-2 text-xl font-semibold text-center",
            children: [
              Paragraph(
                text: title
              ),
            ]
          )
        ]
      )
    ]
  );

  final String title;
  final String path;
  final String imagePath;
  final String publishDate;
}