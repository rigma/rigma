// Imports
#import "@preview/brilliant-cv:4.1.0": cv-section, cv-skill, h-bar


#cv-section("Compétences")

#cv-skill(
  type: [Langues],
  info: [Français #h-bar() Anglais],
)

#cv-skill(
  type: [Langages],
  info: [
    Javascript / Typescript #h-bar()
    Python #h-bar()
    Rust #h-bar()
    SQL #h-bar()
    Terraform
  ],
)

#cv-skill(
  type: [Base de données],
  info: [
    DuckDB #h-bar()
    Google BigQuery #h-bar()
    PostgreSQL
  ],
)
