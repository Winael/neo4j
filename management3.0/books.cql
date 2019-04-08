// Management Books

// Books Collection

CREATE 
  (IntelligenceEmotionnelleEtManagement:Book {title:"Intelligence et Management", author: "Ilios Katsou", tags:["Management","Management 3.0","Intelligence Emotionnelle"]}),
  (ManagezHumainCEstRentable:Book {title:"Managez Humain, C'est rentable", author: "Franck Martin", tags:["Management","Management 3.0","Intelligence Emotionnelle"]}),
  (LesEntrepriseHumanistes:Book {title:"Les entreprises humanistes, comment elles vont changer le monde", author: "Jacques Lecomte", tags:["Management","Management 3.0","Intelligence Emotionnelle"]})

// Author Collection

CREATE
  (IliosKatsou:Author {firstname:"Ilios", surname:"Katsou", name:"Ilios Katsou"}),
  (FranckMartin:Author {firstname:"Franck", surname:"Martin", name:"Franck Martin"}),
  (JacquesLecomte:Author {firstname:"Jacques", surname:"Lecomte", name:"Jacques Lecomte"})

// Author of relation

CREATE
  (IliosKatsou)-[:author_of]->(IntelligenceEmotionnelleEtManagement),
  (FranckMartin)-[:author_of]->(ManagezHumainCEstRentable),
  (JacquesLecomte)-[:author_of]->(LesEntrepriseHumanistes)

