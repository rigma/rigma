#import "./lib.typ": (
  colors,
  cv-headline,
  cv-education,
  cv-identity,
  cv-professional,
  cv-skills,
  icon,
  load-metadata,
)

#let parse-boolish(input) = {
  if type(input) == bool {
    input
  } else if type(input) == str {
    input in ("1", "true", "yes", "y")
  } else {
    false
  }
}

#let lang = sys.inputs.at("lang", default: "fr")
#let href = parse-boolish(sys.inputs.at("href", default: false))

#set page(
  paper: "a4",
  margin: (x: 1.4cm, y: 1cm),
  footer: context [
    #columns(2)[
      #set text(fill: colors.secondary, size: 8pt)

      #smallcaps([Romain Failla])
      #colbreak()
      #align(right)[#smallcaps([CV])]
    ]
  ]
)
#set document(author: "Romain Failla")
#set text(fill: colors.primary, font: "Source Sans 3")

#let metadata = load-metadata(lang: lang);

#cv-identity(metadata, with: (lang: lang, href: href))
#v(6pt)

#cv-headline(metadata, lang: lang)
#v(2pt)

#cv-professional(metadata, lang: lang)
#cv-skills(metadata, lang: lang)
#cv-education(metadata, lang: lang)
