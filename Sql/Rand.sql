Imagine that you have a table that only consist of country names and you are asked to write a query that randomly selects ten countries:
THis can be solved using rand fuction in sql
Query:
Select CountryName from Countries order by rand() limit 10;
