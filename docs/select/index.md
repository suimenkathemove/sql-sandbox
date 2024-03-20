# SELECT

## 加工

### DISTINCT

重複行を除外する。

```sql
SELECT DISTINCT column FROM tables
```

#### Use case

値の一覧を取得したい場合。

## Pagination

```sql
SELECT *
FROM tables
LIMIT perPage
OFFSET ((page - 1) * perPage)
```
