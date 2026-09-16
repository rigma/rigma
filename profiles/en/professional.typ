#import "@preview/brilliant-cv:4.1.0": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Professional Experience")

#cv-entry-start(society: [Taster], location: [Paris, France])
#cv-entry-continued(
  title: [Senior Software Engineer],
  date: [May 2024 - June 2026],
  description: block(
    block([
      Following my promotion, I've been tasked to take back the work on the internal invoicing software used to charge Taster's partners.\ 
      It's in this context where I've achieved the following tasks:
    ])
    + list(
      [Rework the ingestion of invoices coming from food delivery platforms (mainly Deliveroo and UberEats)],
      [Design an API to generate and manage partners' invoices based on their sales],
      [Develop an interface to help accountants to manage partner invoicing],
      [Prepare the groundwork to setup electronic invoicing],
    )
  ),
  tags: (
    "Docker",
    "DuckDB",
    "FastAPI",
    "Google Cloud Platform",
    "Python",
    "PostgreSQL",
    "React",
    "Terraform",
    "Typescript",
  ),
)
#cv-entry-continued(
  title: [Full Stack Engineer],
  date: [March 2021 - May 2024],
  description: block(
    block([
      My first at Taster was to take part to the evolution of the internal software used by the partners to manage their purchase orders for their kitchens.\ 
      During this time I've worked on:
    ])
    + list(
      [Integrating Taster's furnishers EDI systems to automate partner kitchens purchase orders],
      [Revamping the software to provide more flexibility to partners when placing their orders],
      [Helping with the transition from Flask to FastAPI for existing APIs],
    )
  ),
  tags: (
    "Docker",
    "FastAPI",
    "Flask",
    "Google Cloud Platform",
    "Javascript",
    "Python",
    "Terraform",
    "Vue.js",
  ),
)

#cv-entry(
  title: [Junior Backend Developer],
  society: [Ornikar],
  location: [Paris, France],
  date: [Oct. 2018 - Dec. 2019],
  description: block(
    block([During my year at Ornikar, I've taken part to the development of the theory-part of the French licence driver exam where I used to do the following tasks:])
    + list(
      [Develop and maintain of the legacy monolith and help with the transition to a microservices architure],
      [Take part with the design of the new learning module of theory exam of the French driver licence],
    )
  ),
  tags: ("AWS", "Laravel", "MySQL", "PHP", "PostgreSQL"),
)

#cv-entry(
  title: [End of study Internship],
  society: [Astrakhan],
  location: [Paris, France],
  date: [March 2018 - August 2018],
  description: block([During my end-of-study, I've joined Astrakhan to help with the development of an augmented reality application for Hololens headset.]),
  tags: ("C#", "Microsoft Hololens", "Unity"),
)
