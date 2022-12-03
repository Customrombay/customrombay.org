import '../dbml/lib/dbml.dart';
import 'device.dart';
import 'phoneTable.dart';
import 'pageBase.dart';

class DevicePage {
  DevicePage ({
    required this.device
  });

  Device device = Device(
    deviceName: "",
    deviceVendor: "",
    deviceModelName: "",
    deviceDescription: "",
    listOfRoms: []
  );

  HtmlDoc toHtmlDoc() {
    return PageBase(
      path: "${device.deviceVendor.toLowerCase()}-${device.deviceName}/index.html",
      title: "CustomRomBay.org - ${device.deviceName}",
      listOfWidgets: [
        Article(
          widget_class: "prose lg:prose-lg mx-auto my-8 dark:prose-dark px-4",
          widgets:[
            Heading(
              level: 1,
              widget_class: "text-2xl font-bold mb-2",
              text: "${device.deviceVendor} ${device.deviceModelName}"
            ),
//             Style(
//               css: """img {
// margin-bottom: 0.7em!important;
// }""",
//             ),
            Paragraph(
              text: device.deviceDescription
            ),
            PhoneTable(
              listOfRoms: device.listOfRoms
            )
          ]
        )
      ]
    ).toHtmlDoc();
    // return HtmlDoc(
    //   path: "${device.deviceVendor.toLowerCase()}-${device.deviceName}/index.html",
    //   head: Head(
    //     title: "CustomRomBay.org - ${device.deviceName}",
    //     widgets: [
    //       Meta(
    //         charset: "UTF-8"
    //       ),
    //       Meta(
    //         name: "viewpoint",
    //         content: "width=device-width, initial-scale=1"
    //       ),
    //       Link(
    //         rel: "stylesheet",
    //         href: "/style/tailwind.css",
    //       )
    //     ]
    //   ),
    //   body: Body(
    //     widget_class: "bg-gray-100 dark:bg-gray-800 dark:text-white relative flex flex-col min-h-screen",
    //     widgets: [
    //       Header(
    //         widget_class: "container flex justify-between md:justify-between gap-4 flex-wrap p-6 mx-auto relative",
    //         widgets: [
    //           Hyperlink(
    //             href: "#",
    //             widget_class: "capitalize font-extrabold text-2xl",
    //             widgets: [
    //               Img(
    //                 src: "https://alterventure.pl/logo-right-dark.webp",
    //                 alt: "Alterventure",
    //                 widget_class: "h-8 max-w-full"
    //               )
    //             ]
    //           ),
    //           Button(
    //             widget_class: "mobile-menu-button md:hidden",
    //             text: """<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
    //     <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
    //     <line x1="4" y1="6" x2="20" y2="6" />
    //     <line x1="4" y1="12" x2="20" y2="12" />
    //     <line x1="4" y1="18" x2="20" y2="18" />
    //   </svg>"""
    //           ),
    //           UnorderedList(
    //             widget_class: "mobile-menu absolute z-10 px-6 pb-6 md:p-0 top-full left-0 w-full md:w-auto md:relative hidden md:flex flex-col md:flex-row items-center md:items-center gap-4 lg:gap-6 bg-gray-100 dark:bg-gray-800",
    //             widgets: [
    //               ListItem(
    //                 widgets: [
    //                   Hyperlink(
    //                     href: "/2ndpage.html",
    //                     text: "Posts"
    //                   )
    //                 ]
    //               ),
    //               ListItem(
    //                 widgets: [
    //                   Hyperlink(
    //                     href: "/en/page/about",
    //                     text: "About"
    //                   )
    //                 ]
    //               ),
    //               ListItem(
    //                 widgets: [
    //                   Hyperlink(
    //                     href: "/en/page/about",
    //                     text: "Registration"
    //                   )
    //                 ]
    //               ),
    //               ListItem(
    //                 widgets: [
    //                   Hyperlink(
    //                     href: "/en/page/about",
    //                     text: "Contact"
    //                   )
    //                 ]
    //               ),
    //               ListItem(
    //                 widget_class: "grid place-items-center",
    //                 widgets: [
    //                   Span(
    //                     widget_class: "open-search inline-block cursor-pointer",
    //                     text: """<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5"
    //         stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
    //         <path stroke="none" d="M0 0h24v24H0z" fill="none" />
    //         <circle cx="10" cy="10" r="7" />
    //         <line x1="21" y1="21" x2="15" y2="15" />
    //       </svg>"""
    //                   )
    //                 ]
    //               ),
    //               ListItem(
    //                 widget_class: "grid place-items-center",
    //                 widgets: [
    //                   Span(
    //                     widget_class: "toggle-dark-mode inline-block cursor-pointer",
    //                     text: """<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5"
    //         stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
    //         <path stroke="none" d="M0 0h24v24H0z" fill="none" />
    //         <circle cx="12" cy="12" r="3" />
    //         <line x1="12" y1="5" x2="12" y2="5.01" />
    //         <line x1="17" y1="7" x2="17" y2="7.01" />
    //         <line x1="19" y1="12" x2="19" y2="12.01" />
    //         <line x1="17" y1="17" x2="17" y2="17.01" />
    //         <line x1="12" y1="19" x2="12" y2="19.01" />
    //         <line x1="7" y1="17" x2="7" y2="17.01" />
    //         <line x1="5" y1="12" x2="5" y2="12.01" />
    //         <line x1="7" y1="7" x2="7" y2="7.01" />
    //       </svg>"""
    //                   )
    //                 ]
    //               )
    //             ]
    //           )
    //         ]
    //       ),
    //       Main(
    //         widget_class: "flex-1",
    //         widgets: [
    //           Article(
    //             widget_class: "prose lg:prose-lg mx-auto my-8 dark:prose-dark px-4",
    //             widgets:[
    //               Heading(
    //                 level: 1,
    //                 widget_class: "text-2xl font-bold mb-2",
    //                 text: "${device.deviceVendor} ${device.deviceModelName}"
    //               ),
    //               Style(
    //                 css: """img {
    //   margin-bottom: 0.7em!important;
    // }""",
    //               ),
    //               Paragraph(
    //                 text: device.deviceDescription
    //               ),
    //               PhoneTable(
    //                 listOfRoms: device.listOfRoms
    //               )
    //             ]
    //           )
    //         ]
    //       ),
    //       Footer(
    //         widget_class: "container p-6 mx-auto flex justify-between items-center",
    //         widgets: [
    //           Span(
    //             widget_class: "text-sm font-light",
    //             text: "Copyright © 2022 - CustomRomBay.org"
    //           )
    //         ]
    //       ),
    //       Script(
    //         src: "https://alterventure.pl/js/scripts.min.js"
    //       ),
    //       Script(
    //         script: """const darkmode = document.querySelector('.toggle-dark-mode');
    // function toggleDarkMode() {
    //   if (document.documentElement.classList.contains('dark')) {
    //     document.documentElement.classList.remove('dark')
    //     localStorage.setItem('darkmode', 'light')
    //   } else {
    //     document.documentElement.classList.add('dark')
    //     localStorage.setItem('darkmode', 'dark')
    //   }
    // }
    // if (darkmode) {
    //   darkmode.addEventListener('click', toggleDarkMode);
    // }

    // const darkStorage = localStorage.getItem('darkmode');
    // const isBrowserDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

    // if (!darkStorage && isBrowserDark) {
    //   document.documentElement.classList.add('dark');
    // }

    // if (darkStorage && darkStorage === 'dark') {
    //   toggleDarkMode();
    // }"""
    //       ),
    //       Script(
    //         script: """const mobileMenuButton = document.querySelector('.mobile-menu-button')
    // const mobileMenu = document.querySelector('.mobile-menu')
    // function toggleMenu() {
    //   mobileMenu.classList.toggle('hidden');
    //   mobileMenu.classList.toggle('flex');
    // }
    // if(mobileMenu && mobileMenuButton){
    //   mobileMenuButton.addEventListener('click', toggleMenu)
    // }"""
    //       )
    //     ]
    //   )
    // );
  }
}