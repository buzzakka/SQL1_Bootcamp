## Exercise 08 - Fibonacci algorithm is in a function

== TASK ==

Please write a SQL or pl/pgsql function `fnc_fibonacci` (it’s up to you) that has an input parameter pstop with type integer (by default is 10) and the function output is a table with all Fibonacci numbers less than pstop.

To check yourself and call a function, you can make a statements like below.

    select * from fnc_fibonacci(100);
    select * from fnc_fibonacci();