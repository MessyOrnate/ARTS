# Write your MySQL query statement below
select s1.score,
(select count(*)+1 
from (select distinct score from Scores) s2 
where s2.score>s1.score) as Rank 
from Scores s1 order by Rank