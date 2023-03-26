SELECT * FROM student INNER JOIN mark ON (student.id=mark.student_id) WHERE AVG(mark)>8 GROUP BY student.id;

SELECT (student.id, student.name) FROM student INNER JOIN mark ON (student.id=mark.student_id) WHERE MIN(mark.mark)>7 GROUP BY student.id;

SELECT (student.id, student.name) FROM student INNER JOIN payment ON (student.id=payment.student_id AND YEAR(payment.payment_date)=2019) WHERE (COUNT(payment.id)>2) GROUP BY student.id;