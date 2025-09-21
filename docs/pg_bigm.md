# pg_bigm

全文検索するためのツール。文字列から全文検索するためのインデックスを作成する。

マルチバイト文字列を検索するために、pg_trgmをベースに開発された。

pg_bigmはGIN indexのみをサポートしている。
GIN indexは文書中の単語の位置を保持している。

## 準備

postgresql.confに以下を追加する。

```conf
shared_preload_libraries = 'pg_bigm'
```

以下を実行する。

```sql
CREATE EXTENSION pg_bigm;
```

## GIN indexの作成

```sql
-- ginはインデックスメソッド
-- gin_bigm_opsは演算子クラス
CREATE INDEX gin_idx_accounts_name ON accounts USING gin (name gin_bigm_ops);
```

## 全文検索の実行

pg_bigmでは、LIKE演算子の中間一致検索を使って全文検索ができる。

## pg_bigmの関数

| name            | description  |
| --------------- | ------------ |
| bigm_similarity | 類似度を返す |

## 注意点

- 大文字小文字を区別する
- サイズ上限

## 参考

- <https://www.fujitsu.com/jp/products/software/resources/feature-stories/postgres/article-index/pg-bigm/>
