# atlas_geo 
## Description
Cette application mobile, développée avec **Flutter**, présente un **atlas géographique interactif**.  
Elle permet de visualiser une liste de pays, leurs drapeaux et d’accéder à leurs détails (capitale, population, superficie, langue officielle)
## Fonctionnalités
- Liste dynamique des pays avec drapeau et nom.
- Page de détail pour chaque pays :
  - Drapeau
  - Capitale
  - Population
  - Superficie
  - Langue officielle
- Menu latéral (Drawer) pour naviguer :
  - Accueil
  - À propos
  - Quitter l’application
## Structure du projet

atlas_geo_sahar/
│
├─ lib/
│ ├─ main.dart
│ ├─ welcome_page.dart
│ ├─ countries_page.dart
│ ├─ country_detail_page.dart
│ ├─ models/
│ │ └─ country.dart
│ └─ data/
│ └─ countries_data.dart
│
├─ assets/
│ └─ images/
│ ├─ world.png
│ ├─ tunisia.png
│ └─ france.png
│
├─ pubspec.yaml
└─ README.md
