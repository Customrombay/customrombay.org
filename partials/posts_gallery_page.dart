import 'package:staurolite/staurolite.dart';
import 'pageBase.dart';
import 'post_view.dart';

class PostsGalleryPage {

  PostsGalleryPage();

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "/posts/index.html",
      title: "Customrombay.org - posts",
      listOfWidgets: [
        Article(
          properties: "mx-auto p-6 text-center",
          children:[
            Heading(
              level: 1,
              properties: "text-3xl font-bold lg:text-5xl mx-5 text-center",
              text: "Read posts from our authors"
            ),
          ]
        ),
        Div(
          properties: "container p-6 mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 lg:gap-8",
          children: [
            PostView(
              title: "The Ultimate Guide To Choosing Phones for Custom ROMs [Early 2024 Edition]",
              path: "/posts/2024_phone_buying_guide",
              imagePath: "/post-images/2024_phone_buying_guide_1.webp",
              publishDate: "Feb 8, 2024"
            ),
            PostView(
              title: "This device isn't Play Protect certified - easy fix for Android 14 and older",
              path: "/posts/play_protect_certification_fix",
              imagePath: "/post-images/play_protect_certification_fix_1.webp",
              publishDate: "Dec 2, 2023"
            ),
            PostView(
              title: "GSI custom ROMs - what to do if my device does not have a custom ROM support?",
              path: "/posts/gsi_roms",
              imagePath: "/post-images/gsi_roms_1.webp",
              publishDate: "Nov 12, 2023"
            ),
            PostView(
              title: "Android 14-based custom ROMs are here!",
              path: "/posts/android14roms",
              imagePath: "/post-images/android14_1.webp",
              publishDate: "Oct 22, 2023"
            ),
          ]
        )
      ]
    ).toHtmlDoc();
  }
}