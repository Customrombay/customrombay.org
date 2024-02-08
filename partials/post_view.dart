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
            properties: "relative",
            children: [
              Div(
                properties: "grid place-content-center",
                children: [
                  Image(
                    src: imagePath,
                    properties: "rounded-lg shadow-sm h-52 w-full object-cover",
                    loading: "lazy",
                    // alt: ""
                  )
                ]
              ),
              Div(
                properties: "absolute top-4 right-4 rounded shadow bg-white text-gray-900 dark:bg-gray-900 dark:text-white text-sm px-2 py-0.5",
                children: [
                  Paragraph(
                    text: publishDate
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
          ),
        ]
      )
    ]
  );

  final String title;
  final String path;
  final String imagePath;
  final String publishDate;
}