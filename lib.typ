#import "@preview/fontawesome:0.6.2": (fa-icon)

#let _DEFAULT_LANG = "fr"
#let _ALLOWED_FIELDS = ("driver", "email", "github", "linkedin", "location", "phone")

#let colors = (
  primary: rgb("#131a28"),
  secondary: color.lighten(rgb("#131a28"), 40%),
  tertiary: color.lighten(rgb("#131a28"), 90%),
)
#let shifted-icons = ("database", "location-dot")

#let load-metadata(lang: _DEFAULT_LANG) = {
  yaml("profiles/" + lang + "/metadata.yaml")
}

#let badge(content) = box(content, fill: colors.tertiary, radius: 3pt, inset: 4pt)
#let h-bar(separator: "|", size: 5pt) = [#h(size) #text(separator) #h(size)]

#let icon(kind, fill: colors.primary, size: 12pt) = {
  let icon-name = if kind == "driver" {
    "car"
  } else if kind == "email" {
    "envelope"
  } else if kind == "github" {
    "square-github"
  } else if kind == "linkedin" {
    "linkedin"
  } else if kind == "location" {
    "location-dot"
  } else if kind == "phone" {
    "phone"
  } else {
    none
  }

  if icon-name != none {
    fa-icon(icon-name, fill: fill, size: size, top-edge: "baseline")
  } else {
    none
  }
}

#let identity-entry(kind, content, lang: "fr", href: "", size: 10pt) = {
  set text(fill: colors.primary, lang: lang, size: size)
  let rendered = {
    icon(kind, size: size)
    h(5pt)
    text(content)
  }

  if href != "" {
    box(link(href, rendered))
  } else {
    box(rendered)
  }
}

#let cv-heading(header, lang: "fr") = {
  set text(fill: colors.primary, lang: lang)

  grid(
    columns: (auto, 1fr),
    gutter: 4pt,
    heading(smallcaps(header), level: 1),
    align(bottom)[
      #box(line(stroke: stroke(cap: "round", thickness: 0.5pt), length: 100%), width: 1fr)
    ],
  )
}

#let cv-headline(metadata, lang: "fr") = {
  let headline = metadata.at("headline", default: (:))
  if headline.len() == 0 {
    panic("missing headline in metadata")
  }

  let title = headline.at("title", default: none)
  if title == none {
    panic("missing headline title")
  }

  cv-heading(headline.title)

  let content = headline.at("content", default: none)
  if content == none {
    panic("missing headline content")
  }

  set document(description: content)
  set text(fill: colors.primary, lang: lang, size: 10pt)
  set par(justify: true)

  text(content)
}

#let cv-identity(metadata, with: (:)) = {
  let lang = with.at("lang", default: _DEFAULT_LANG)
  let with-href = with.at("href", default: false)

  let identity = metadata.at("identity", default: (:))

  let normalizer(field, content) = {
    let text = if type(content) == dictionary {
      content.at("displayText", default: "")
    } else {
      content
    }
    let href = if with-href {
      if type(content) == dictionary {
        if field == "github" {
          content.at("href", default: "https://github.com/" + text)
        } else if field == "linkedin" {
          content.at("href", default: "https://www.linkedin.com/in/" + text)
        } else {
          content.at("href", default: "")
        }
      } else {
        if field == "github" {
          "https://github.com/" + text
        } else if field == "linkedin" {
          "https://www.linkedin.com/in/" + text
        } else {
          ""
        }
      }
    } else {
      ""
    }

    (kind: field, text: text, href: href)
  }

  let job-title = if "title" in identity {
    identity.title
  } else {
    panic("missing job title in order to render the resume")
  }
  let info = identity.at("links", default: (:))
    .pairs()
    .filter(((field, _)) => field in _ALLOWED_FIELDS)
    .map(((field, content)) => normalizer(field, content))
    .map(entry => identity-entry(
      entry.kind,
      entry.text,
      lang: lang,
      href: entry.href,
    ))
    .join(h-bar())

  show title: set text(fill: colors.primary, lang: lang, size: 24pt)
  show title: set align(center)

  set document(title: "Romain Failla - " + job-title)

  title([#text([Romain], weight: "light") Failla])
  align(center)[#text(
    job-title,
    fill: colors.secondary,
    size: 16pt,
    style: "italic",
  )]
  align(center)[#info]
}


#let cv-education(metadata, lang: "fr") = {
  set text(lang: lang, size: 10pt)

  cv-heading(metadata.education.title)
  metadata.education.degrees.map(degree => {
    let items = (
      stack(
        dir: ltr,
        text(degree.institution, weight: "bold"),
        align(right)[#text(str(degree.year), fill: colors.secondary, style: "italic")],
      ),
      smallcaps(degree.name),
    )

    let notes = degree.at("notes", default: ())
    if type(notes) == array and notes.len() > 0 {
      items.push(list(..notes))
    }

    stack(spacing: 8pt, ..items)
  }).join()
}

#let render-skills(skills) = {
  if type(skills) != dictionary {
    panic("skills to render must be stored in a dictionary!")
  }

  let title = skills.at("title", default: none)
  if title == none {
    panic("missing skill section title")
  }

  let items = skills.at("items", default: ())
  if type(items) != array and items.len() == 0 {
    panic("missing skill section items")
  }

  (
    text(title, weight: "bold"),
    items
      .map(item => {
        if type(item) == dictionary {
          let displayText = item.at("displayText", default: none)
          let level = item.at("level", default: none)

          if displayText == none {
            panic("missing skill text content")
          }

          if level != none {
            [#displayText (#level)]
          } else {
            displayText
          }
        } else if type(item) == str {
          [#item]
        } else {
          panic("invalid skill provided")
        }
      })
      .join(h-bar())
  )
}

#let cv-skills(metadata, lang: "fr") = {
  let skills = metadata.at("skills", default: (:))
  if skills.len() == 0 or "title" not in skills {
    panic("missing CV skills")
  }

  let items = ()

  if "naturalLanguages" in skills {
    items = items + render-skills(skills.naturalLanguages)
  }
  if "languages" in skills {
    items = items + render-skills(skills.languages)
  }
  if "frameworks" in skills {
    items = items + render-skills(skills.frameworks)
  }
  if "cloud" in skills {
    items = items + render-skills(skills.cloud)
  }
  if "tooling" in skills {
    items = items + render-skills(skills.tooling)
  }

  set text(fill: colors.primary, lang: lang, size: 10pt)
  cv-heading(skills.title, lang: lang)
  grid(
    columns: (25%, auto),
    column-gutter: 4pt,
    row-gutter: 8pt,
    ..items.map(item => grid.cell(item)),
  )
}

#let cv-professional(metadata, lang: "fr") = {
  cv-heading(metadata.professional.title, lang: lang)
  set text(lang: lang, fill: colors.primary, size: 11pt)
  show smallcaps: set text(lang: lang, size: 10pt)

  metadata.professional.journey.map(
    milestone => stack(
      dir: ttb,
      spacing: 8pt,
      columns(2)[
        #text(milestone.company, weight: "bold")
        #colbreak()
        #align(right)[#text(milestone.location, style: "italic")]
      ],
      ..milestone.positions
        .map(position => {
          let items = (
            columns(2)[
              #smallcaps(position.title)
              #colbreak()
              #align(right)[
                #set text(fill: colors.secondary, lang: lang, size: 10pt)
                #text(position.period.from, style: "italic")
                #if position.period.at("to", default: none) != none {
                  h-bar(separator: "-", size: 2pt)
                  text(position.period.to, style: "italic")
                }
              ]
            ],
          )

          if (
            position.at("achievements", default: none) != none
            and type(position.achievements) == array
          ) {
            items.push(
              list(..position.achievements.map(achievement => [
                #set text(lang: lang, size: 10pt)
                #text(eval(achievement, mode: "markup"))
              ])),
            )
          }
          // if position.at("skills", default: ()).len() > 0 {
          //   items.push(
          //     stack(
          //       dir: ltr,
          //       spacing: 4pt,
          //       ..position.skills.map(skill => badge(text(skill, size: 8pt)))
          //     )
          //   )
          // }

          stack(dir: ttb, spacing: 10pt, ..items)
        }),
    )
  ).join()
}
