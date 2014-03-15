### 適当な概要

#### データディレクトリ

LOAD DATA INFILEで突っ込む

```
mysql> show variables like 'datadir';
+---------------+------------------------+
| Variable_name | Value                  |
+---------------+------------------------+
| datadir       | /usr/local/mysql/data/ |
+---------------+------------------------+
```

絶対パスで指定しないとデータディレクトリベースの相対パスとなる。

[リンク](http://linux.kororo.jp/cont/server/mysql_basic1.php)

ディレクトリを適当に変えて、ファイルからSQLコマンドを実行する。

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

