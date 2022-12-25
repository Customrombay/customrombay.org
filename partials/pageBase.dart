import 'package:dbml/dbml.dart';

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
        widgets: [
          GoogleAnalytics(
            tagid: "G-S2SPCWG41N"
          ),
          Meta(
            charset: "UTF-8"
          ),
          Meta(
            name: "viewport",
            content: "width=device-width, initial-scale=1"
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
        widget_class: "bg-gray-100 dark:bg-gray-800 dark:text-white relative flex flex-col min-h-screen",
        widgets: [
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
            widget_class: "container flex justify-between md:justify-between gap-4 flex-wrap p-6 mx-auto relative",
            widgets: [
              Hyperlink(
                href: "/",
                widget_class: "capitalize font-extrabold text-2xl",
                widgets: [
                  Img(
                    src: "/banner.webp",
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
                        href: "/contributing",
                        text: "Contributing"
                      )
                    ]
                  ),
                  ListItem(
                    widgets: [
                      Hyperlink(
                        href: "/about",
                        text: "About"
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
            widgets: listOfWidgets
          ),
          Footer(
            widget_class: "container p-6 mx-auto md:flex justify-between items-center",
            widgets: [
              Paragraph(
                widget_class: "text-sm font-light",
                text: """Copyright © 2022 - ${Hyperlink(href: "https://github.com/PiotrZPL", text:"Piotr Lange").toHTML()} - All rights reserved"""
              ),
              Paragraph(
                widget_class: "text-sm font-light",
                text: """Generated on ${DateTime.now().day.toString().length == 2 ? DateTime.now().day : "0" + DateTime.now().day.toString()}.${DateTime.now().month}.${DateTime.now().year} using ${Hyperlink(href: "https://github.com/PiotrZPL/dbml", text:"DBML").toHTML()}"""
              )
            ]
          ),

          Div(
            widget_class: "search-ui absolute top-0 left-0 w-full h-full bg-white dark:bg-gray-800 hidden",
            widgets: [
              Div(
                widget_class: "container max-w-3xl mx-auto p-12",
                widgets: [
                  Div(
                    widget_class: "relative",
                    widgets: [
                      Div(
                        widget_class: "my-4 text-center text-2xl font-bold",
                        widgets: [
                          Paragraph(
                            text: "Search"
                          )
                        ]
                      ),
                      Span(
                        widget_class: "p-2 absolute right-0 top-0 cursor-pointer close-search",
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
                    widget_class: "py-2 px-3 w-full dark:text-black border dark:border-transparent",
                    placeholder: "Enter search query"
                  ),
                  Div(
                    widget_class: "search-results text-lg font-medium my-4 hidden",
                    widgets: [
                      Paragraph(
                        text: "Results"
                      )
                    ]
                  ),
                  UnorderedList(
                    widget_class: "search-list my-2"
                  ),
                  Div(
                    widget_class: "no-results text-center my-8 hidden",
                    widgets: [
                      Div(
                        widget_class: "text-xl font-semibold mb-2",
                        widgets: [
                          Paragraph(
                            text: "No results found"
                          )
                        ]
                      ),
                      Paragraph(
                        widget_class: "font-light text-sm",
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

    //darkStorage = localStorage.getItem('darkmode');
    //isBrowserDark = window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches;

    //if (!darkStorage && isBrowserDark) {
    //  document.documentElement.classList.add('dark');
    //}

    //if (darkStorage && darkStorage === 'dark') {
    //  toggleDarkMode();
    //}"""
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
    );
  }
}

class Input extends HtmlWidget {
  Input({
    widget_class,
    style,
    id,
    title,
    this.widgets,
    this.onClick,
    this.text,
    this.accept,
    this.alt,
    this.autocomplete,
    this.autofocus,
    this.checked,
    this.dirname,
    this.disabled,
    this.form,
    this.formaction,
    this.formenctype,
    this.formmethod,
    this.formnovalidate,
    this.formtarget,
    this.height,
    this.list,
    this.max,
    this.maxlength,
    this.pattern,
    this.placeholder,
    this.readonly,
    this.required,
    this.size,
    this.src,
    this.step,
    this.type,
    this.value,
    this.width,
  }) : super(widget_class: widget_class, style: style, id: id, title: title);

  final List<HtmlWidget?>? widgets;
  final String? onClick;
  final String? text;

  final String? accept;
  final String? alt;
  final String? autocomplete;
  final String? autofocus;
  final String? checked;
  final String? dirname;
  final String? disabled;
  final String? form;
  final String? formaction;
  final String? formenctype;
  final String? formmethod;
  final String? formnovalidate;
  final String? formtarget;
  final String? height;
  final String? list;
  final String? max;
  final String? maxlength;
  final String? pattern;
  final String? placeholder;
  final String? readonly;
  final String? required;
  final String? size;
  final String? src;
  final String? step;
  final String? type;
  final String? value;
  final String? width;

  String toHTML() {
    var output = "<input ";
    if (widget_class != null) {
      output += """class="$widget_class" """;
    }
    if (style != null) {
      output += """style="$style" """;
    }
    if (id != null) {
      output += """id="$id" """;
    }
    if (title != null) {
      output += """title="$title" """;
    }
    if (onClick != null) {
      output += """onClick="$onClick" """;
    }
    if (type != null) {
      output += """type="$type" """;
    }
    if (placeholder != null) {
      output += """placeholder="$placeholder" """;
    }
    output = output.trim() + ">";
    if (widgets != null) {
      widgets!.forEach((element) {
        if (element != null) {
          output += "\n" + element.toHTML();
        }
      });
    }
    if (text != null) {
      output = output.trim() + text!;
    }
    return output + "</input>";
  }
}