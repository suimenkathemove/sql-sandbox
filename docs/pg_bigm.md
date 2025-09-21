# pg_bigm

全文検索するためのツール。文字列から全文検索するためのインデックスを作成する。

マルチバイト文字列を検索するために、pg_trgmをベースに開発された。

pg_bigmはGIN indexのみをサポートしている。
GIN indexは文書中の単語の位置を保持している。

## 準備

postgresql.confに以下を追加する。

```
shared_preload_libraries = 'pg_bigm'
```

以下を実行する。

```sql
CREATE EXTENSION pg_bigm;
```

## 参考

- <https://www.fujitsu.com/jp/products/software/resources/feature-stories/postgres/article-index/pg-bigm/>
