## Exercise 07 - Different view to find a Minimum

== TASK ==

Please write a SQL or pl/pgsql function `func_minimum` (it’s up to you) that has an input parameter is an array of numbers and the function should return a minimum value. 

To check yourself and call a function, you can make a statement like below.

    SELECT func_minimum(VARIADIC arr => ARRAY[10.0, -1.0, 5.0, 4.4]);