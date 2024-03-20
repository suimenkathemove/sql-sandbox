# SELECT

- [SELECT](#select)
  - [DISTINCT](#distinct)
    - [Use case](#use-case)
  - [ORDER BY](#order-by)
    - [列番号を指定した並べ替え](#列番号を指定した並べ替え)
    - [Use case](#use-case-1)
  - [Pagination, Paging](#pagination-paging)
    - [Offset Method](#offset-method)
      - [LIMIT-OFFSET](#limit-offset)
      - [OFFSET-FETCH](#offset-fetch)
    - [Cursor Method](#cursor-method)
    - [Offset vs Cursor-Based Pagination](#offset-vs-cursor-based-pagination)
    - [Seek Method](#seek-method)

## DISTINCT

重複行を除外する。

```sql
SELECT DISTINCT column FROM tables
```

### Use case

値の一覧を取得したい場合。

## ORDER BY

```sql
SELECT <column> FROM <tables>
  ORDER BY <column> <ASC | DESC>
```

デフォルトは`ASC`。

指定した列が文字列の場合は、DBMSに設定された照合順序(文字コード順やアルファベット順)を基準に並べ替えられる。

複数の列を指定することができ、同じ値の場合は次の列によって並べ替えられる。

ORDER BYを指定しない場合、DBMSはどのような順序で行を返すかを保証していない。

### 列番号を指定した並べ替え

列番号とは、選択列リストの1からの順番。

```sql
SELECT column1, column2 FROM tables
  ORDER BY 2, 1
```

集合演算子を使う場合は、単純な列名指定を行えないという制約があるため、列番号での指定を用いることもある。

### Use case

- ランキング
- 検索時の並べ替え

## Pagination, Paging

### Offset Method

`LIMIT-OFFSET`と`OFFSET-FETCH`の書き方があるが、目的は同じ。

1件目から取得したい場合は0を指定するか、DBMSによってはOFFSET句自体を省略できる。

#### LIMIT-OFFSET

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

#### OFFSET-FETCH

```sql
SELECT <column> FROM <table>
ORDER BY <column>
OFFSET <スキップする行数> ROWS
FETCH NEXT <取得する行数> ROWS ONLY
```

Oracle, SQL Serverでサポートされている。

### Cursor Method

<!-- TODO -->

### Offset vs Cursor-Based Pagination

- <https://medium.com/@oshiryaeva/offset-vs-cursor-based-pagination-which-is-the-right-choice-for-your-project-e46f65db062f>
- <https://medium.com/@maryam-bit/offset-vs-cursor-based-pagination-choosing-the-best-approach-2e93702a118b>

### Seek Method

- <https://qiita.com/madilloar/items/b4e786a932ef9d4551b9>
- <https://qiita.com/madilloar/items/5625e61cf3e348d08ef8>
