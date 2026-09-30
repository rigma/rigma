#import "@preview/brilliant-cv:4.1.0": (
  cv-entry, cv-entry-continued, cv-entry-start, cv-section,
)

#cv-section("Expérience Professionnelle")

#cv-entry-start(society: [Taster], location: [Paris, France])
#cv-entry-continued(
  title: [Senior Software Engineer],
  date: [mai 2024 - juin 2026],
  description: block(
    block([
      Après ma promotion, j'ai repris le logiciel de facturation des partenaires interne pour y changer la
      méthode de calcul et améliorer son ergonomie. C'est dans ce contexte que j'ai eu l'opportunité de :
    ])
    + list(
      [Refondre l'ingestion des factures provenant des plateformes de livraison à domicile (Deliveroo et UberEats)],
      [
        Concevoir une pipeline de traitement de données controllé par API pour générer et gérer les factures des
        partenaires en se basant sur leur chiffre d'affaire.
      ],
      [
        Concevoir et développer une interface pour aider les comptables à superviser la facturation des
        partneraires
      ],
      [Préparer de la mise en place de la facturation électronique],
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
  date: [mars 2021 - mai 2024],
  description: block(
    block([
      Mes premières missions au sein de Taster étaient de participer aux différentes évolutions du logiciel
      d'achat de fourniture utilisé en interne et par les partenaires pour approvisionner leurs cuisines
      pour leurs opérations. Durant cette période, j'ai travaillé sur ces différents projets :
    ])
    + list(
      [Intégrer les systèmes EDI des fournisseurs de Taster pour automatiser l'envoi des commandes],
      [
        Construire une nouvelle interface de commande pour fournir plus de flexibilité aux partenaires lors
        de leurs achats
      ],
      [
        Concevoir et développer la transition de commandes modélisées avec des _finite state machines_ pour
        utilisé une _event-driven architecture_
      ],
      [Participation à l'amélioration des outils techniques internes et au développement de prototypes],
    )
  ),
  tags: (
    "Docker",
    "FastAPI",
    "Flask",
    "Google Cloud Platform",
    "Javascript",
    "PostgresSQL",
    "Python",
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
    block[Durant mon année à Ornikar, j'ai participé au développement des modules liés à l'apprentissage du Code de la route en réalisant les tâches suivantes :]
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
  description: block[Dans le cadre de mon stage de fin d'études, j'ai rejoint Astrakhan pour les aider à développer un prototype d'application en réalité augmentée],
  tags: ("C#", "Microsoft Hololens", "Unity"),
)
