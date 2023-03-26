SELECT * FROM subject JOIN mark ON (subject.id=mark.subject_id) WHERE AVG(mark.mark)>(SELECT AVG(mark) FROM mark);

SELECT * FROM student JOIN payment ON (student.id=payment.student_id) WHERE SUM(payment.amount)<AVG(SELECT amount FROM payment);