_default:
  @just --list

# Compile Typst formatted CV into a PDF document
[group('cv')]
compile name="cv" lang="fr":
  typst compile --open --input profile={{ lang }} cv.typ 'build/{{ name }}.pdf'

# Compile Typst formatted CV into a PDF document and watch for file change events
[group('cv')]
watch name="cv" lang="fr":
  typst watch --open --input profile={{ lang }} cv.typ 'build/{{ name }}.pdf'
