CALL apoc.load.json("file:///home/winael/neo4j/management3.0/les-entreprises-humanistes.json") YIELD value as book

CREATE
  (
    :Author {
      name:book.author.name,
      firstname: book.author.firstname,
      surname: book.author.surname
    }
  )-[:author_of]->(
    :Book {
      title: book.title,
      author: book.author.name,
      editor: book.editor
    }
  )

WITH book.title as btitle, book.parts as bparts
MATCH (b:Book {title:btitle})
FOREACH (part IN bparts |
  CREATE (p:PART {title:part.title})-[:part_of]->(b)
  FOREACH (chapter IN part.chapters |
    CREATE (c:CHAPTER {title:chapter.title})-[:chapter_of]->(p)
    FOREACH (key_thought IN chapter.key_thoughts |
      MERGE (kt:KEY_THOUGHT {key_thought:key_thought.key_thought})-[:key_thought]->(c)
      FOREACH (tag IN key_thought.tags |
        MERGE (t:TAG {tag:tag})-[:tag]->(kt)
      )
    )
    FOREACH (section IN chapter.sections |
      CREATE (s:SECTION {title:section.title})-[:section_of]->(c)
    )
  )
)
