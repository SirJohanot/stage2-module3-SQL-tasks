SELECT * FROM student JOIN mark ON (student.id=mark.student_id) WHERE AVG(mark.mark)>8;

SELECT (id, name) FROM student JOIN mark ON (student.id=mark.student_id) WHERE MIN(mark.mark)>7;

SELECT (id, name) FROM student JOIN payment ON (student.id=payment.student_id) WHERE MIN(mark.mark)>7;