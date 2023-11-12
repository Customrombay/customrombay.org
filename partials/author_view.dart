import 'package:staurolite/staurolite.dart';

class AuthorView extends HtmlWidget {
  AuthorView();


  String toHTML() {
    return Div(
      children: [
        Heading(
          level: 2,
          text: "About the author"
        ),
        Div(
          properties: "flex flex-col md:flex-row md:space-x-8",
          children: [
            Div(
              properties: "grid place-content-center",
              children:[
                Image(
                  properties: "rounded-full max-w-sm",
                  src: "/post-images/piotr_lange_fixed.webp"
                )
              ]
            ),
            Div(
              children: [
                Heading(
                  level: 3,
                  text: Hyperlink(
                    text: "Piotr Lange",
                    href: "https://piotrlange.de/"
                  ).toHTML()
                ),
                Paragraph(
                  text: "A young software developer, custom ROM maintainer, LineageOS contributor and FOSS enthusiast. Lead developer at ${Hyperlink(text: "customrombay.org", href: "https://customrombay.org/").toHTML()}. IBDP student from Poland."
                )
              ]
            )
          ]
        )
      ]
    ).toHTML();
  }

}