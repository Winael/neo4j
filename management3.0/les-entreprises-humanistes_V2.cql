CALL apoc.load.json("file:///home/winael/neo4j/management3.0/les-entreprises-humanistes.json") YIELD value as book


 
FOREACH (part IN book.parts |
  FOREACH (chapter IN part.chapters |
    CREATE (c:Chapter 
      {title:chapter.title,number:chapter.number}
    )-[:chapter_of]->(p:Part 
      {title:part.title}
    )-[:part_of]->(:Book 
      {
       title: book.title, 
       author: book.author.name, 
       editor: book.editor
      }
    )<-[:author_of]-(:Author {
    name:book.author.name, 
    firstname:book.author.firstname, 
    surname:book.author.surname
   })))
