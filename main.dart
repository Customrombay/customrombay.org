import 'dbml/lib/dbml.dart';
import 'partials/phoneTable.dart';
import 'partials/devicePage.dart';
import 'partials/device.dart';
import 'partials/romForDevice.dart';
import 'partials/deviceVendor.dart';
import 'package:yaml/yaml.dart';
import 'dart:io';

void main() async {
  buildWebsite(
    await Website(
      listOfHtml: [
        HtmlDoc(
          path: "index.html",
          head: Head(
            title: "Customrombay.org",
            widgets: [
              Meta(
                charset: "UTF-8"
              ),
              Meta(
                name: "viewpoint",
                content: "width=device-width, initial-scale=1"
              ),
              Link(
                rel: "stylesheet",
                href: "style/tailwind.css",
              ),
              Link(
                rel: "icon",
                href: "/logo.png"
              )
            ]
          ),
          body: Body(
            widget_class: "bg-gray-100 dark:bg-gray-800 dark:text-white relative flex flex-col min-h-screen",
            widgets: [
              Header(
                widget_class: "container flex justify-between md:justify-between gap-4 flex-wrap p-6 mx-auto relative",
                widgets: [
                  Hyperlink(
                    href: "#",
                    widget_class: "capitalize font-extrabold text-2xl",
                    widgets: [
                      Img(
                        src: "/banner.png",
                        alt: "Customrombay.org",
                        widget_class: "h-8 max-w-full"
                      )
                    ]
                  ),
                  Button(
                    widget_class: "mobile-menu-button md:hidden",
                    text: """<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
            <path stroke="none" d="M0 0h24v24H0z" fill="none"/>
            <line x1="4" y1="6" x2="20" y2="6" />
            <line x1="4" y1="12" x2="20" y2="12" />
            <line x1="4" y1="18" x2="20" y2="18" />
          </svg>"""
                  ),
                  UnorderedList(
                    widget_class: "mobile-menu absolute z-10 px-6 pb-6 md:p-0 top-full left-0 w-full md:w-auto md:relative hidden md:flex flex-col md:flex-row items-center md:items-center gap-4 lg:gap-6 bg-gray-100 dark:bg-gray-800",
                    widgets: [
                      ListItem(
                        widgets: [
                          Hyperlink(
                            href: "/2ndpage.html",
                            text: "Posts"
                          )
                        ]
                      ),
                      ListItem(
                        widgets: [
                          Hyperlink(
                            href: "/en/page/about",
                            text: "About"
                          )
                        ]
                      ),
                      ListItem(
                        widgets: [
                          Hyperlink(
                            href: "/en/page/about",
                            text: "Registration"
                          )
                        ]
                      ),
                      ListItem(
                        widgets: [
                          Hyperlink(
                            href: "/en/page/about",
                            text: "Contact"
                          )
                        ]
                      ),
                      ListItem(
                        widget_class: "grid place-items-center",
                        widgets: [
                          Span(
                            widget_class: "open-search inline-block cursor-pointer",
                            text: """<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                <circle cx="10" cy="10" r="7" />
                <line x1="21" y1="21" x2="15" y2="15" />
              </svg>"""
                          )
                        ]
                      ),
                      ListItem(
                        widget_class: "grid place-items-center",
                        widgets: [
                          Span(
                            widget_class: "toggle-dark-mode inline-block cursor-pointer",
                            text: """<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5"
                stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
                <path stroke="none" d="M0 0h24v24H0z" fill="none" />
                <circle cx="12" cy="12" r="3" />
                <line x1="12" y1="5" x2="12" y2="5.01" />
                <line x1="17" y1="7" x2="17" y2="7.01" />
                <line x1="19" y1="12" x2="19" y2="12.01" />
                <line x1="17" y1="17" x2="17" y2="17.01" />
                <line x1="12" y1="19" x2="12" y2="19.01" />
                <line x1="7" y1="17" x2="7" y2="17.01" />
                <line x1="5" y1="12" x2="5" y2="12.01" />
                <line x1="7" y1="7" x2="7" y2="7.01" />
              </svg>"""
                          )
                        ]
                      )
                    ]
                  )
                ]
              ),
              Main(
                widget_class: "flex-1",
                widgets: [
                  Article(
                    widget_class: "mx-auto p-6 text-center",
                    widgets:[
                      Heading(
                        level: 1,
                        widget_class: "text-3xl font-bold lg:text-5xl mx-5 text-center",
                        text: "Welcome to Customrombay.org!"
                      ),
        //               Style(
        //                 css: """img {
        //   margin-bottom: 0.7em!important;
        // }""",
        //               ),
                      Paragraph(
                        widget_class: "text-xl lg:text-2xl mt-8 mx-5 text-center",
                        text: "A place to find all custom ROMs available for your device."
                      )
                    ]
                  ),
                  Div(
                    widget_class: "container p-6 mx-auto grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 lg:gap-8",
                    widgets: await deviceShows()
                  )
                ]
              ),
              Footer(
                widget_class: "container p-6 mx-auto flex justify-between items-center",
                widgets: [
                  Span(
                    widget_class: "text-sm font-light",
                    text: """Copyright © 2022 - ${Hyperlink(href: "https://github.com/PiotrZPL", text:"Piotr Lange").toHTML()} - All rights reserved"""
                  ),
                  Span(
                    widget_class: "text-sm font-light",
                    text: """Generated on ${DateTime.now().day.toString().length == 2 ? DateTime.now().day : "0" + DateTime.now().day.toString()}.${DateTime.now().month}.${DateTime.now().year} using ${Hyperlink(href: "https://github.com/PiotrZPL/dbml", text:"DBML").toHTML()}"""
                  )
                ]
              ),
              Script(
                src: "https://alterventure.pl/js/scripts.min.js"
              ),
              Script(
                script: """const darkmode = document.querySelector('.toggle-dark-mode');
        function toggleDarkMode() {
          if (document.documentElement.classList.contains('dark')) {
            document.documentElement.classList.remove('dark')
            localStorage.setItem('darkmode', 'light')
          } else {
            document.documentElement.classList.add('dark')
            localStorage.setItem('darkmode', 'dark')
          }
        }
        if (darkmode) {
          darkmode.addEventListener('click', toggleDarkMode);
        }

        const darkStorage = localStorage.getItem('darkmode');
        const isBrowserDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

        if (!darkStorage && isBrowserDark) {
          document.documentElement.classList.add('dark');
        }

        if (darkStorage && darkStorage === 'dark') {
          toggleDarkMode();
        }"""
              ),
              Script(
                script: """const mobileMenuButton = document.querySelector('.mobile-menu-button')
        const mobileMenu = document.querySelector('.mobile-menu')
        function toggleMenu() {
          mobileMenu.classList.toggle('hidden');
          mobileMenu.classList.toggle('flex');
        }
        if(mobileMenu && mobileMenuButton){
          mobileMenuButton.addEventListener('click', toggleMenu)
        }"""
              )
            ]
          )
        ),
      ] + await renderPoco()
    )
  );
}

Future<List<HtmlDoc>> renderPoco() async {
  List<HtmlDoc> listOfHtmlDoc = [];
  Future<List<Device>> devicesList = listOfDevices();
  for (var device in await devicesList) {
    listOfHtmlDoc += [
      DevicePage(
        device: device
      ).toHtmlDoc()
    ];
  }

  return listOfHtmlDoc;
}

Future<List<Device>> listOfDevices() async {
  String deviceDirName = "database/phone_data";
  final deviceDir = Directory(deviceDirName);
  List<Device> listOfDevices = [];

  for (var deviceFile in await deviceDir.list().toList()) {
    String deviceFileContent = await File(deviceFile.path).readAsString();
    var ydoc = loadYaml(deviceFileContent);
    List<RomForDevice> listOfRoms = [];
    for (var rom in ydoc["roms"]) {
      //print(rom.runtimeType);
      listOfRoms += [
        RomForDevice(
          romName: rom["rom-name"],
          romSupport: rom["rom-support"],
          romState: rom["rom-state"],
          androidVersion: rom["android-version"].toString(),
          romNotes: rom["rom-notes"] ?? ""
        )
      ];
    }

    listOfDevices += [
      Device(
        deviceName: ydoc["device-name"],
        deviceVendor: ydoc["device-vendor"],
        deviceModelName: ydoc["device-model-name"].toString(),
        deviceDescription: ydoc["device-description"] ?? "",
        listOfRoms: listOfRoms
      )
    ];
  }

  return listOfDevices;
}

Future<List<Div>> deviceShows() async {
  Future<List<Device>> devicesList = listOfDevices();
  List<Div> listOfShows = [];
  List<DeviceVendor> listOfDeviceVendors = [];

  for (var device in await devicesList) {
    var isVendor = false;
    for (var vendor in listOfDeviceVendors) {
      if (device.deviceVendor == vendor.vendorName) {
        isVendor = true;
        vendor.listOfDevices += [device];
      }
    }
    if (!isVendor) {
      listOfDeviceVendors += [
        DeviceVendor(
          vendorName: device.deviceVendor,
          listOfDevices: [device]
        )
      ];
    }
  }

  listOfDeviceVendors.sort((a, b) => a.vendorName.toLowerCase().compareTo(b.vendorName.toLowerCase()));

  for (var vendor in listOfDeviceVendors) {
    var listOfThisDevices = vendor.listOfDevices;
    listOfThisDevices.sort((a, b) => a.deviceModelName.toLowerCase().compareTo(b.deviceModelName.toLowerCase()));
    listOfShows += [
      Div(
        widget_class: "col-span-1 md:col-span-2 lg:col-span-3 text-3xl font-semibold",
        widgets: [
          Paragraph(
            text: vendor.vendorName
          )
        ]
      )
    ];
    for (var device in listOfThisDevices) {
      listOfShows += [
        Div(
          widget_class: "p-2",
          widgets: [
            Hyperlink(
              href: "/${device.deviceVendor.toLowerCase()}-${device.deviceName}/",
              widgets: [
                Div(
                  widget_class: "grid place-content-center",
                  widgets: [
                    Img(
                      src: await getDeviceImagePath("${device.deviceVendor.toLowerCase()}-${device.deviceName}"),
                      widget_class: "rounded-lg shadow-sm h-52 object-cover"
                    )
                  ]
                ),
                Div(
                  widget_class: "my-2 text-xl font-semibold text-center",
                  widgets: [
                    Paragraph(
                      text: "${device.deviceModelName}"
                    ),
                    Paragraph(
                      text: "(${device.deviceName})"
                    )
                  ]
                )
              ]
            )
          ]
        )
      ];
    }
  }

  return listOfShows;
}

Future<String> getDeviceImagePath(String devicePath) async {
  if (await File("static/$devicePath.png").exists()) {
    return "/$devicePath.png";
  }
  else if (await File("static/$devicePath.jpg").exists()) {
    return "/$devicePath.jpg";
  }
  else if (await File("static/$devicePath.jpeg").exists()) {
    return "/$devicePath.jpeg";
  }
  else if (await File("static/$devicePath.webp").exists()) {
    return "/$devicePath.webp";
  }
  else {
    return "/phone.png";
  }
} 