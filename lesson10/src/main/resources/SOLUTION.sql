SELECT * FROM INNER subject JOIN mark ON (subject.id=mark.subject_id) WHERE AVG(mark.mark)>(SELECT AVG(mark) FROM mark) GROUP BY student.id;

SELECT * FROM INNER student JOIN payment ON (student.id=payment.student_id) WHERE SUM(payment.amount)>AVG(SELECT SUM(amount) FROM payment INNER JOIN student ON (payment.student_id=student.id) GROUP BY student.id) GROUP BY student.id;