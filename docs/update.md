# UPDATE

```sql
UPDATE <table name>
SET <column name> = <value>, ...
```

例

```sql
UPDATE users
SET name = 'new name', updated_at = NOW()
WHERE id = 1
```
