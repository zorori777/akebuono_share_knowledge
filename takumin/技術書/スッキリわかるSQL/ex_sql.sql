# group by
select 費目, sum(出金額) as 費目別の出金額合計
from 家計簿
group by 費目

# group by having

select 費目, sum(出金額) as 費目別の出金額合計
from 家計簿
group by 費目
having sum(出金額) > 0

# create table

create table わたさん (
	日付 DATE,
	費目ID INTEGER,
	メモ VARCHAR(100),
	入金額 INTEGER,
	出金額 INTEGER
)

# default付き create table

create table たくみん (
	日付 date,
	彼女ID integer,
	メモ varchar(100) default '不明',
	入金額 integer default 0,
	出金額 integer default 0
)

# alter table add
alter table 家計簿 add 関連月 date;

# aleter table drop
alter table 家計簿 drop 関連月;

# not null 制約
create table たくみん (
	日付 date not null,
	費目ID integer,
	メモ varchar(100) default '不明' not null,
	入金額 integer default 0 check(入金額 >= 0),
	出金額 integer default 0 check(出金額 >= 0)
	);

# unique 制約

create table 費目(
	ID integer,
	名前 varchar(40) unique
)

# primariy key
create table みらい(
	id integer primary key,
	名前 varchar(40) unique
)
