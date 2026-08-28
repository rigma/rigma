// Imports
#import "@preview/brilliant-cv:4.1.0": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Expérience Professionnelle")

#cv-entry-start(
  society: [Taster],
  location: [Paris, France],
)
#cv-entry-continued(
  title: [Senior Software Engineer],
  date: [mai 2024 - juin 2026],
  description: list(
    [Refonte de l'ingestion des factures provenant des plateformes de livraison à domicile (Deliveroo et UberEats)],
    [Développement d'une interface de gestion de la facturation des cuisines partenaires],
    [Préparation de la mise en place de la facturation électronique],
  ),
  tags: (
    "Docker",
    "DuckDB",
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
  date: [mars 2021 - mai 2024],
  description: block(
    block(lorem(12))
    + list(
      [Développement de l'intégration EDI des commandes faites par les cuisines opérant une marque de Taster chez les distributeurs partenaires],
      [Refonte de l'interface et du système de commandes interne utilisé par les cuisines opérant une marque de Taster],
      [Participation à l'amélioration des outils techniques internes et au développement de prototypes],
    )
  ),
  tags: (
    "Docker",
    "Google Cloud Platform",
    "Javascript",
    "Python",
    "PostgresSQL",
    "Terraform",
    "Vue.js",
  ),
)

#cv-entry(
  title: [Développeur Backend Junior],
  society: [Ornikar],
  location: [Paris, France],
  date: [oct. 2018 - déc. 2019],
  description: block(
    block[Durant mon année à Ornikar, j'ai participé au développement des modules liés à l'apprentissage du Code de la route en réalisant les tâches suivantes]
    + list(
      [Développement et maintien des APIs existantes pour assurer le début de transition vers une architecture en microservices],
      [Participation à la réalisation du cahier des charges de la refonte du module d'apprentissage du Code de la route],
    )
  ),
  tags: ("AWS", "Laravel", "MySQL", "PHP", "PostgreSQL"),
)

#cv-entry(
  title: [Ingénieur stagiaire],
  society: [Astrakhan],
  location: [Paris, France],
  date: [mars 2018 - août 2018],
  description: block[Dans le cadre de mon stage de fin d'études, j'ai rejoins Astrakhan pour les aider à développer un prototype d'application en réalité augmentée],
  tags: ("C#", "Microsoft Hololens", "Unity"),
)
