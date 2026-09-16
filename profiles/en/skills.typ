#import "@preview/brilliant-cv:4.1.0": (cv-section, cv-skill, h-bar)

#cv-section("Skills")

#cv-skill(
  type: [Languages],
  info: [French (Native) #h-bar() English (Fluent)],
)

#cv-skill(
  type: [Programming Languages],
  info: [
    Javascript / Typescript #h-bar()
    Python #h-bar()
    Rust #h-bar()
    SQL
  ],
)

#cv-skill(
  type: [Databases],
  info: [
    DuckDB #h-bar()
    Google BigQuery #h-bar()
    PostgreSQL
  ]
)

#cv-skill(
  type: [Developer toolings],
  info: [
    Docker #h-bar()
    Git #h-bar()
    Terraform
  ]
)
