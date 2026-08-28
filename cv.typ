#import "@preview/brilliant-cv:4.1.0": cv, h-bar

#let profile = sys.inputs.at("profile", default: "fr")
#let metadata = toml("profiles/" + profile + "/metadata.toml")

#let import-modules(modules) = {
  for module in modules {
    include {
      "profiles/" + profile + "/" + module + ".typ"
    }
  }
}

#show: cv.with(
  metadata,
)

#import-modules((
  "professional",
  "education",
  "skills",
))
