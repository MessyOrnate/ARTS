# Write your MySQL query statement below

#select distinct a.Email from Person a, Person b where a.Email = b.Email and a.Id != b.Id;

#select Email from Person group by Email having count(Email) > 1;

select email from

(select email, count(email) num from person GROUP BY email) as temp_table

where num > 1