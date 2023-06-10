import 'package:staurolite/staurolite.dart';

class PageBase {
  PageBase ({
    required this.path,
    required this.title,
    required this.listOfWidgets,
    this.description
  });

  String path;
  String title;
  String? description;
  List<HtmlWidget> listOfWidgets;

  HtmlDoc toHtmlDoc() {
    return HtmlDoc(
      description: description,
      lang: "en",
      path: path,
      head: Head(
        title: title,
        children: [
          GoogleAnalytics(
            tagid: "G-S2SPCWG41N"
          ),
          Script(
            script: """""",
            async: true,
            src: "https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-3824950651657334",
            crossorigin: "anonymous"
          ),
          Script(
            script: """(function(s,u,z,p){s.src=u,s.setAttribute('data-zone',z),p.appendChild(s);})(document.createElement('script'),'https://inklinkor.com/tag.min.js',6034719,document.body||document.documentElement)"""
          ),
          Meta(
            charset: "UTF-8"
          ),
          Meta(
            name: "viewport",
            content: "width=device-width, initial-scale=1"
          ),
          Meta(
            name: "description",
            content: description
          ),
          Link(
            rel: "stylesheet",
            href: "/style/tailwind.css",
          ),
          Link(
            rel: "icon",
            href: "/logo.png"
          )
        ]
      ),
      body: Body(
        properties: "bg-gray-100 dark:bg-gray-800 dark:text-white relative flex flex-col min-h-screen",
        // Fixes mobileMenu size
        onresize: "onWindowResize();",
        children: [
          Script(
            script: """
    var darkStorage = localStorage.getItem('darkmode');
    var isBrowserDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

    if (!darkStorage && isBrowserDark) {
      document.documentElement.classList.add('dark');
      localStorage.setItem('darkmode', 'dark')
    }
    if (darkStorage && darkStorage === 'dark') {
      document.documentElement.classList.add('dark')
    }"""
          ),
          Header(
            properties: "container flex justify-between md:justify-between gap-4 flex-wrap p-6 mx-auto relative",
            children: [
              Hyperlink(
                href: "/",
                properties: "capitalize font-extrabold text-2xl",
                children: [
                  Image(
                    src: "/banner.webp",
                    alt: "Customrombay.org",
                    properties: "h-8 max-w-full"
                  )
                ]
              ),
              Button(
                properties: "block relative h-auto mobile-menu-button md:hidden",
                ariaLabel: "Mobile menu button",
                children: [
                  Div(
                    id: "line",
                    properties: "m-auto h-0.5 w-6 rounded dark:bg-gray-100 bg-gray-900 transition duration-300"
                  ),
                  Div(
                    id: "line2",
                    properties: "m-auto mt-2 h-0.5 w-6 rounded dark:bg-gray-100 bg-gray-900 transition duration-300"
                  ),
                  Div(
                    id: "line3",
                    properties: "m-auto mt-2 h-0.5 w-6 rounded dark:bg-gray-100 bg-gray-900 transition duration-300"
                  )
                ]
              ),
              UnorderedList(
                properties: "mobile-menu h-0 md:h-auto overflow-hidden px-6 md:pb-6 md:p-0 top-full left-0 w-full md:w-auto md:relative md:flex md:flex-row flex-col items-center md:items-center gap-6 md:gap-6 bg-gray-100 dark:bg-gray-800 transition-all ease-in duration-300",
                children: [
                  ListItem(
                    properties: "grid place-items-center my-2",
                    children: [
                      Hyperlink(
                        href: "/contributing",
                        text: "Contributing"
                      )
                    ]
                  ),
                  ListItem(
                    properties: "grid place-items-center my-2",
                    children: [
                      Hyperlink(
                        href: "/about",
                        text: "About"
                      )
                    ]
                  ),
                  ListItem(
                    properties: "grid place-items-center my-2",
                    children: [
                      Span(
                        properties: "open-search inline-block cursor-pointer",
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
                    properties: "grid place-items-center my-2",
                    children: [
                      Span(
                        properties: "toggle-dark-mode inline-block cursor-pointer",
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
            properties: "flex-1",
            children: listOfWidgets
          ),
          Footer(
            properties: "container p-6 mx-auto md:flex justify-between items-center",
            children: [
              Paragraph(
                properties: "text-sm font-light",
                text: """Copyright © 2022-${DateTime.now().year} - ${Hyperlink(href: "https://github.com/PiotrZPL", text:"Piotr Lange").toHTML()} - All rights reserved"""
              ),
              Paragraph(
                properties: "text-sm font-light",
                text: """Generated on ${generateDate()} using ${Hyperlink(href: "https://github.com/PiotrZPL/staurolite", text:"Staurolite").toHTML()}"""
              )
            ]
          ),

          Div(
            properties: "search-ui absolute top-0 left-0 w-full h-full bg-white dark:bg-gray-800 hidden",
            children: [
              Div(
                properties: "container max-w-3xl mx-auto p-12",
                children: [
                  Div(
                    properties: "relative",
                    children: [
                      Div(
                        properties: "my-4 text-center text-2xl font-bold",
                        children: [
                          Paragraph(
                            text: "Search"
                          )
                        ]
                      ),
                      Span(
                        properties: "p-2 absolute right-0 top-0 cursor-pointer close-search",
                        text: """<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" stroke-width="1.5"
          stroke="currentColor" fill="none" stroke-linecap="round" stroke-linejoin="round">
          <path stroke="none" d="M0 0h24v24H0z" fill="none" />
          <line x1="18" y1="6" x2="6" y2="18" />
          <line x1="6" y1="6" x2="18" y2="18" />
        </svg>"""
                      )
                    ]
                  ),
                  Input(
                    type: "search",
                    properties: "py-2 px-3 w-full dark:text-black border dark:border-transparent",
                    placeholder: "Enter search query"
                  ),
                  Div(
                    properties: "search-results text-lg font-medium my-4 hidden",
                    children: [
                      Paragraph(
                        text: "Results"
                      )
                    ]
                  ),
                  UnorderedList(
                    properties: "search-list my-2"
                  ),
                  Div(
                    properties: "no-results text-center my-8 hidden",
                    children: [
                      Div(
                        properties: "text-xl font-semibold mb-2",
                        children: [
                          Paragraph(
                            text: "No results found"
                          )
                        ]
                      ),
                      Paragraph(
                        properties: "font-light text-sm",
                        text: "Try adjusting your search query"
                      )
                    ]
                  )

                ]
              )
            ]
          ),

          Script(
            src: "/scripts.min.js"
          ),
          Script(
            script: """const mobileMenuButton = document.querySelector('.mobile-menu-button')
    const mobileMenu = document.querySelector('.mobile-menu')
    function toggleMenu() {
      mobileMenuButton.querySelector('#line').classList.toggle('rotate-45')
      mobileMenuButton.querySelector('#line').classList.toggle('translate-y-1.5')

      mobileMenuButton.querySelector('#line3').classList.toggle('-rotate-45')
      mobileMenuButton.querySelector('#line3').classList.toggle('-translate-y-1')

      mobileMenuButton.querySelector('#line2').classList.toggle('hidden')
      if (mobileMenu.clientHeight === 0) {
        mobileMenu.style.paddingTop = '20px'
        // navbar.style.paddingBottom = '20px'
        mobileMenu.style.height = `\${parseInt(mobileMenu.scrollHeight + 30)}px`
        return
        // console.log("1")
      }
      mobileMenu.style.height = '0px'
      mobileMenu.style.paddingTop = '0px'
    }
    if(mobileMenu && mobileMenuButton){
      mobileMenuButton.addEventListener('click', toggleMenu)
    }"""
          ),
          Script(
            script: """const darkmode = document.querySelector('.toggle-dark-mode');
    function toggleDarkMode() {
      if (document.documentElement.classList.contains('dark')) {
        mobileMenu.classList.toggle("duration-300")
        mobileMenu.classList.toggle("transition-all")
        document.documentElement.classList.remove('dark')
        localStorage.setItem('darkmode', 'light')
        // mobileMenu.classList.toggle("duration-300")
        // mobileMenu.classList.toggle("transition-all")
        setTimeout(() => {  mobileMenu.classList.toggle("duration-300"); mobileMenu.classList.toggle("transition-all"); }, 500);
      } else {
        mobileMenu.classList.toggle("duration-300")
        mobileMenu.classList.toggle("transition-all")
        document.documentElement.classList.add('dark')
        localStorage.setItem('darkmode', 'dark')
        // mobileMenu.classList.toggle("duration-300")
        // mobileMenu.classList.toggle("transition-all")
        setTimeout(() => {  mobileMenu.classList.toggle("duration-300"); mobileMenu.classList.toggle("transition-all"); }, 500);
      }
    }
    if (darkmode) {
      darkmode.addEventListener('click', toggleDarkMode);
    }

    //darkStorage = localStorage.getItem('darkmode');
    //isBrowserDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

    //if (!darkStorage && isBrowserDark) {
    //  document.documentElement.classList.add('dark');
    //}

    //if (darkStorage && darkStorage === 'dark') {
    //  toggleDarkMode();
    //}
    """
          ),
          Script(
            script: """function onWindowResize() {
        mobileMenuButton.querySelector('#line').classList.remove('rotate-45')
        mobileMenuButton.querySelector('#line').classList.remove('translate-y-1.5')

        mobileMenuButton.querySelector('#line3').classList.remove('-rotate-45')
        mobileMenuButton.querySelector('#line3').classList.remove('-translate-y-1')

        mobileMenuButton.querySelector('#line2').classList.remove('hidden')
        mobileMenu.style.height = "";
        mobileMenu.style.paddingTop = "";
      }"""
          )
        ]
      )
    );
  }
}

String generateDate() {
  DateTime now = DateTime.now();
  String day = now.day.toString();
  if (day.length == 1) {
    day = "0" + day;
  }
  String month = now.month.toString();
  if (month.length == 1) {
    month = "0" + month;
  }
  return "$day.$month.${now.year}";
}