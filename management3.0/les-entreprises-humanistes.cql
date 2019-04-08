// Les entreprises humanistes

// Info book
//**********

MATCH (book { title: "Les entreprises humanistes, comment elles vont changer le monde"})
SET book.editor="Les Arènes"
;


// TOC
//***********

MATCH (book { title: "Les entreprises humanistes, comment elles vont changer le monde"})
CREATE 
  (SeSentirEnEtatDeFlux:Section {section:"Se sentir en état de « flux »", number: 1})-[:section]->(EtreHeureuxAuTravail:Chapter {chapter:"Être heureux au travail", number: 1})-[:chapter]->(LEpanouissementAuTravail:Part {part:"L'épanouissement au travail", number: 1})-[:part]->(book),
  (LeTravailUneSourceImportanteDeFlux:Section {section:"Le travail : une source importante de « flux »", number: 2})-[:section]->(EtreHeureuxAuTravail),
  (CesPersonnesQuiTrouventDuSensDansToutCeQuEllesFont:Section {section:"Ces personnes qui trouvent du sens dans tout ce qu'elles font", number: 3})-[:section]->(EtreHeureuxAuTravail),
  (EtreHeureuxAuTravailResumonsNous:Section {section:"Résumons-nous", number: 4})-[:section]->(EtreHeureuxAuTravail),
  (ConsiderezVousVotreJob:Section {section:"Considérez-vous votre travail comme un job, une carrière ou une vocation ?", number: 1})-[:section]->(TrouverSaVocation:Chapter {chapter:"Trouver sa vocation", number: 2})-[:chapter]->(LEpanouissementAuTravail),
  (TouteActiviteVocation:Section {section:"Toute activité profesionnelle peut être vécue comme une vocation", number: 2})-[:Section]->(TrouverSaVocation),
  (EnrichirSonTravailPourEnFaireUneVocation:Section {section:"Enrichir son travail pour en faire une vocation", number: 3})-[:Section]->(TrouverSaVocation),
  (TrouverSaVocationResumonsNous:Section {section:"Résumons-nous", number: 4})-[:Section]->(TrouverSaVocation),
  (QuandLesRecompensesDiminuentLaMotivation:Section {section:"Quand les récompenses diminuent la motivation", number: 1})-[:Section]->(EtreVraimentMotive:Chapter {chapter:"Être vraiment motivé", number: 3})-[:Chapter]->(LEpanouissementAuTravail),
  (TroisBesoinsPsychologiquesFondamentaux:Section {section:"Trois besoins psychologiques fondamentaux... voire plus", number: 2})-[:Section]->(EtreVraimentMotive),
  (EtreVraimentMotiveResumonsNous:Section {section:"Résumons-nous", number: 3})-[:Section]->(EtreVraimentMotive),
  (LAltruismeComposanteMajeurDuBonheurAuTravail:Section {section:"L'altruisme, composante majeur du bonheur et de la motivation au travail", number: 1})-[:Section]->(SeSentirUtileAuxAutres:Chapter {chapter:"Se sentir utile aux autres", number: 4})-[:Chapter]->(LEpanouissementAuTravail),
  (UneSourceEssentielleDeMotivation:Section {section:"Une source essentielle de motivation : constater l'impact positif de son travail", number: 2})-[:Section]->(SeSentirUtileAuxAutres),
  (QuandLEmpatieConduitALaCreativite:Section {section:"Quand l'empathie conduit à la créativité", number: 3})-[:Section]->(SeSentirUtileAuxAutres),
  (LeBonheurPArtageDesAltruistes:Section {section:"Le bonheur partagé des altruistes", number: 4})-[:Section]->(SeSentirUtileAuxAutres),
  (LaMotivationDeServicePublic:Section {section:"La motivation de service public", number: 5})-[:Section]->(SeSentirUtileAuxAutres),
  (SeSentirUtileAuxAutresResumonsNous:Section {section:"Résumons-nous", number: 6})-[:Section]->(SeSentirUtileAuxAutres)
;  

// Citations
//*************

// Part 1 : L'épanouissement au travail

// Chapter 1 : Être heureux au travail

MATCH (EtreHeureuxAuTravail {chapter: "Être heureux au travail"}),
      (TrouverSaVocation {chapter: "Trouver sa vocation"}),
      (EtreVraimentMotive {chapter: "Être vraiment motivé"}),
      (SeSentirUtileAuxAutres {chapter: "Se sentir utile aux autres"})

CREATE
  (KhalilGibran:Author {name:"Khalil Gibran"})-[:author]->(TravailFlute:Citation {citation:"Lorsque vous travaillez, vous êtes une flûte à travers laquelle le murmure des heures se transforme en musique"})-[:citation]->(EtreHeureuxAuTravail),
  (Goethe:Author {name:"Goethe"})-[:author]->(JoieRejouitHeureux:Citation {citation:"Qui agit dans la joie et se réjouit de ce qui est accompli est heureux."})-[:citation]->(EtreHeureuxAuTravail)

// Chapter 2 : Trouver sa vocation

CREATE
  (Goethe)-[:author]->(SituationEnnoblieTravailPatience:Citation {citation:"Il n'existe aucune situation qui ne puisse être ennoblie par le travail ou la patience"})-[:citation]->(TrouverSaVocation)

// Chapter 3 : Être vraiment motivé

CREATE
  (MarcAurele:Author {name:"Marc-Aurèle"})-[:author]->(ChoseDifficileImpossibleALHomme:Citation {citation:"Ne suppose pas, si quelque chose t'est difficile, que cette chose soit impossible à l'homme. Mais, si une chose est possible et naturelle à l'homme, pense qu'elle est aussi à ta portée."})-[:citation]->(EtreVraimentMotive),
  (Goethe)-[:author]->(ToujoursAssezDeForceMenerABienConvaincu:Citation {citation:"Il reste toujours assez de force à chacun pour mener à bien ce dont il est convaincu."})-[:citation]->(EtreVraimentMotive)

// Chapter 4 : Se Sentir utile aux autres

CREATE
  (KhalilGibran)-[:author]->(TravailAmourVisible:Citation {citation:"Le travail est l'amour rendu visible."})-[:citation]->(SeSentirUtileAuxAutres),
  (ViktorFrankl:Author {name:"Viktor Frankl"})-[:author]->(HommeAmpleurResponsabiliteHumain:Citation {citation:"Un homme qui réalise l'ampleur de la responsabilité qu'il a envers un être humain qui l'attend, ou vis-à-vis d'un travail qui lui reste à accomplir, ne gâchera pas sa vie. Il connait le « pourquoi » de cette vie, et pourra supporter tous les « comment » auxquels il est soumis."})-[:citation]->(SeSentirUtileAuxAutres)
;

// Key thoughts
//***************

// Part 1 : L'épanouissement au travail

// Chapter 1 : Être heureux au travail

MATCH (EtreHeureuxAuTravail {chapter: "Être heureux au travail"})

CREATE (MajoritairementAimetravail:Key_Thought {key_thought:"Malgré le scepticisme, majoritairement, les gens aiment leur travail."})-[:key_thought]->(EtreHeureuxAuTravail)

CREATE 
  (InteretActiviteQualiteRelationHumain:Key_Thought {key_thought:"Ce sont surtout l'intérêt de l'activité et les relations humaines qui expliquent la satisfaction au travail, plus que le salaire"})-[:key_thought]->(EtreHeureuxAuTravail),
  (RelationsHumaines:Tag {tag:"Relations Humaines"})-[:tag]->(InteretActiviteQualiteRelationHumain),
  (SatisfactionAuTravail:Tag {tag:"Satisfaction au travail"})-[:tag]->(InteretActiviteQualiteRelationHumain),
  (Salaire:Tag {tag:"Salaire"})-[:tag]->(InteretActiviteQualiteRelationHumain)

CREATE
  (PasSpecifiqueALaFrance:Key_Thought {key_thought:"Ce n'est pas spécifique à la France"})-[:key_thought]->(EtreHeureuxAuTravail)

CREATE
  (TravailSourceEssentielleDeSens:Key_Thought {key_thought:"Le travail est source essentielle de sens et répond à aspiration existentielle telle que : Permettre d'exprimer ses aptitudes, se réaliser, se forger une identité/d'être utile aux autres/de tisser des liens."})-[:key_thought]->(EtreHeureuxAuTravail),
  (SourceDeSens:Tag {tag:"Source de sens"})-[:tag]->(TravailSourceEssentielleDeSens),
  (AspirationExistentielle:Tag {tag:"Aspiration Existentielle"})-[:tag]->(TravailSourceEssentielleDeSens),
  (ExprimerSesAptitudes:Tag {tag:"Exprimer ses aptitudes"})-[:tag]->(TravailSourceEssentielleDeSens),
  (SeRealiser:Tag {tag:"Se Réaliser"})-[:tag]->(TravailSourceEssentielleDeSens),
  (SeForgerUneIdentite:Tag {tag:"Se forger une identité"})-[:tag]->(TravailSourceEssentielleDeSens),
  (EtreUtileAuxAutres:Tag {tag:"Être utile aux autres"})-[:tag]->(TravailSourceEssentielleDeSens),
  (TisserDesLiens:Tag {tag:"Tisser des liens"})-[:tag]->(TravailSourceEssentielleDeSens),
  (RelationsHumaines)-[:tag]->(TravailSourceEssentielleDeSens)

CREATE
  (LienSatisfactionTravailPerformanceIndividu:Key_Thought {key_thought:"Plus le travail est complexe, plus le lien entre la satisfaction au travail et la performance de l'individu se renforce"})-[:key_thought]->(EtreHeureuxAuTravail),
  (TravailComplexe:Tag {tag:"Travail Complexe"})-[:tag]->(LienSatisfactionTravailPerformanceIndividu),
  (SatisfactionAuTravail)-[:tag]->(LienSatisfactionTravailPerformanceIndividu),
  (PerformanceDeLindividu:Tag {tag:"Performance de l'individu"})-[:tag]->(LienSatisfactionTravailPerformanceIndividu)


CREATE
  (PlusQueSatisfactionSentimentDetreValorise:Key_Thought {key_thought:"Plus que la satisfaction, c'est le sentiment de se sentir valorisé et reconnu pour ses compétences au sein de l'organisation qui influe sur la performance individuelle. Impression de valeur personnelle plus présente si activité présente une certaine complexite, demande des compétences personnelles, a du sens pour l'individu, l'oblige à travailler en interdépendance avec ses collègues, management participatif, respect, autonomie par le management et quand le salarié s'estime bien payé pour ses compétences"})-[:key_thought]->(EtreHeureuxAuTravail),
  (SatisfactionAuTravail)-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (SentimentDeValorisation:Tag {tag:"Sentiment de valorisation"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (ReconnaissanceDesCompetences:Tag {tag:"Reconnaissance des compétences"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (PerformanceDeLindividu)-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (ValeurPersonnelle:Tag {tag:"Valeur Personnelle"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (TravailComplexe)-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (CompetencesPersonnelles:Tag {tag:"Compétences personnelles"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (SourceDeSens)-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (TisserDesLiens)-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (ManagementPaticipatif:Tag {tag: "Management Participatif"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (Respect:Tag {tag:"Respect"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (Autonomie:Tag {tag:"Autonomie"})-[:tag]->(PlusQueSatisfactionSentimentDetreValorise),
  (Salaire)-[:tag]->(PlusQueSatisfactionSentimentDetreValorise)
;
  

// Section 1 : Se sentir en état de « flux »

MATCH (SeSentirEnEtatDeFlux {section:"Se sentir en état de « flux »"})

CREATE 
  (FluxDependDeuxFacteurs:Key_Thought {key_thought:"Ressentir le flux dépends de deux facteurs qui doivent agir conjointement : personne et situation."})-[:key_thought]->(SeSentirEnEtatDeFlux),
  (Flux:Tag {tag:"« Flux »"})-[:tag]->(FluxDependDeuxFacteurs)
  
// Show book

;
