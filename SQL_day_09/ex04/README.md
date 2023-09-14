## Exercise 04 - Database View VS Database Function

== TASK ==

As you remember, we created 2 database views to separate data from the person tables by gender attribute. 
Please define 2 SQL-functions (please be aware, not pl/pgsql-functions) with names
- `fnc_persons_female` (should return female persons)
- `fnc_persons_male` (should return male persons)

To check yourself and call a function, you can make a statement like below (amazing! you can work with a function like with a virtual table!). 

    SELECT *
    FROM fnc_persons_male();

    SELECT *
    FROM fnc_persons_female();