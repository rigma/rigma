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
      Following my promotion, I took over the internal software used to charge Taster's partners to implement
      new business rules required by a new invoicing model and to improve its usability by the accounting team.
      It's in this context where I had the opportunity to:
    ])
    + list(
      [Rework the ingestion of invoices coming from food delivery platforms (mainly Deliveroo and UberEats)],
      [
        Design a data pipeline controlled by API to generate and manage partners' invoices based on their
        achieved sales
      ],
      [Design and develop an interface to help accountants to manage partner invoicing],
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
      My first missions at Taster were to take part to the different evolutions made to the internal software
      used by the supply team and partners to manage their purchases for their kitchen operations. During this
      period, I've worked on these projects among other things:
    ])
    + list(
      [Integrate Taster's furnishers EDI systems to automate purchase order's sending],
      [Build a marketplace-lite interface for partners to provide more flexibility during their orderings],
      [Design and implement the transition from a _finite state machine_ to an _event-driven architecture_ to manage purchase orders],
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
