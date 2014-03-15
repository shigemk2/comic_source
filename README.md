### 適当な概要

ファイルからSQLコマンドを実行する。

```
mysql>source comic_source.sql;
```

### いい加減覚えよう、というかそらで書こうシリーズ

#### テーブル作成

```sql
CREATE TABLE K_ON (id int auto_increment, charactors text, sources text, band text, title text);
```

#### csvからデータをインポート

```sql
LOAD DATA INFILE "k-on.csv" INTO TABLE K_ON FIELDS TERMINATED BY ',';
```

#### トランザクション

```sql
BEGIN;
COMMIT;
```



