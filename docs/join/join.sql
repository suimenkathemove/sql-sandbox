CREATE TABLE table1 (
  id UUID PRIMARY KEY,
  name TEXT,
  table2_id UUID REFERENCES table2(id)
);

CREATE TABLE table2 (id UUID PRIMARY KEY, name TEXT);

SELECT
  table1.id,
  table1.name,
  table2.name
FROM
  table1
  JOIN table2 ON table1.table2_id = table2.id;
