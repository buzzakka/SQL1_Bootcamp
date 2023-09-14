## Exercise 04 - Let’s find something from Set Theory

== TASK ==

Please write a SQL statement which satisfies a formula `(R - S)∪(S - R)` .
Where R is the `person_visits` table with filter by 2nd of January 2022, S is also `person_visits` table but with a different filter by 6th of January 2022. Please make your calculations with sets under the `person_id` column and this column will be alone in a result. The result please sort by `person_id` column and your final SQL please present in `v_symmetric_union` (*) database view.