## Exercise 02 - Audit of incoming deletes

== TASK ==

Finally, we need to handle `DELETE` statements and make a copy of OLD states for all attribute’s values. Please create a trigger `trg_person_delete_audit` and corresponding trigger function `fnc_trg_person_delete_audit`. 

When you are ready please apply the SQL statement below.

`DELETE FROM person WHERE id = 10;`