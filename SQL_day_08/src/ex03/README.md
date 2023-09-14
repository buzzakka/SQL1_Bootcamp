## Exercise 03 - Non-Repeatable Reads Anomaly

== TASK ==

Please for this task use the command line for PostgreSQL database (psql). You need to check how your changes will be published in the database for other database users. 

Actually, we need two active sessions (meaning 2 parallel sessions in the command lines). 

|  |  |
| ------ | ------ |
| Let’s check one of the famous “Non-Repeatable Reads” database pattern but under `READ COMMITTED` isolation level. You can see a graphical presentation of that anomaly on a picture. Horizontal Red Line means the final results after all sequential steps for both Sessions. | ![D08_08](../../images/D08_08.png) |

Please check a rating for “Pizza Hut” in a transaction mode for session #1 and after that make `UPDATE` of rating to 3.6 value in session #2 (in the same order as in the picture). 