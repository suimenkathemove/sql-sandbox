# JOIN

```sql
SELECT <column1>, <column2>, ...
FROM <table1>
JOIN <table2>
ON <結合条件>
```

DBMSがどのように結合処理を行うかをイメージすることが大事。
FROM句で指定したテーブルを左表(Left Table)やPrimary Table、JOIN句で指定したテーブルを右表(Right Table)やJoined Tableという。

DBMSは、左表の各行に対して、以下のSQLを繰り返し実行している。

```sql
SELECT * FROM table2 WHERE <結合条件>
```

## INNER JOIN

JOIN = INNER JOIN

## LEFT JOIN

## RIGHT JOIN

## FULL JOIN

## CROSS JOIN
