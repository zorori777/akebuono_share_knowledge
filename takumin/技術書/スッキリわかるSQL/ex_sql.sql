# group by
select 費目, sum(出金額) as 費目別の出金額合計
from 家計簿
group by 費目

# group by having

select 費目, sum(出金額) as 費目別の出金額合計
from 家計簿
group by 費目
having sum(出金額) > 0

