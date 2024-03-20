# Pagination, Paging

- [Pagination, Paging](#pagination-paging)
  - [Offset Method](#offset-method)
    - [LIMIT-OFFSET](#limit-offset)
    - [OFFSET-FETCH](#offset-fetch)
  - [Cursor Method](#cursor-method)
  - [Offset vs Cursor-Based Pagination](#offset-vs-cursor-based-pagination)
  - [Seek Method](#seek-method)

## Offset Method

`LIMIT-OFFSET`と`OFFSET-FETCH`の書き方があるが、目的は同じ。

1件目から取得したい場合は0を指定するか、DBMSによってはOFFSET句自体を省略できる。

### LIMIT-OFFSET

```sql
SELECT <column> FROM <table>
LIMIT <取得する行数> OFFSET <スキップする行数>
```

MySQL, PostgreSQL, SQLiteでサポートされている。

```sql
SELECT *
FROM tables
LIMIT perPage
OFFSET ((page - 1) * perPage)
```

### OFFSET-FETCH

```sql
SELECT <column> FROM <table>
ORDER BY <column>
OFFSET <スキップする行数> ROWS
FETCH NEXT <取得する行数> ROWS ONLY
```

Oracle, SQL Serverでサポートされている。

## Cursor Method

<!-- TODO -->

## Offset vs Cursor-Based Pagination

- <https://medium.com/@oshiryaeva/offset-vs-cursor-based-pagination-which-is-the-right-choice-for-your-project-e46f65db062f>
- <https://medium.com/@maryam-bit/offset-vs-cursor-based-pagination-choosing-the-best-approach-2e93702a118b>

## Seek Method

- <https://qiita.com/madilloar/items/b4e786a932ef9d4551b9>
- <https://qiita.com/madilloar/items/5625e61cf3e348d08ef8>
