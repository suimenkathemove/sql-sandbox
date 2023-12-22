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

結合先が複数の場合、その行数に合わせて結合元の行を複製して結合する。
結合先が存在しない場合、結果には表示されなくなる。

## INNER JOIN

JOIN = INNER JOIN

## OUTER JOIN

### LEFT JOIN

### RIGHT JOIN

### FULL JOIN

## CROSS JOIN
