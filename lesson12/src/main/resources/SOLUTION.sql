DELETE FROM payment INNER JOIN student ON (payment.student_id=student.id) WHERE student.groupnumber>4;
DELETE FROM mark INNER JOIN student ON (payment.student_id=student.id) WHERE student.groupnumber>4;
DELETE FROM student WHERE groupnumber>4;

DELETE FROM payment INNER JOIN student ON (payment.student_id=student.id) INNER JOIN mark ON (student.id=mark.student_id) WHERE mark.mark<4;
DELETE FROM mark WHERE mark.mark<4;
DELETE FROM student INNER JOIN mark ON (student.id=mark.student_id) WHERE mark.mark<4;

DELETE FROM payment INNER JOIN paymenttype ON (payment.type_id=paymenttype.id) WHERE paymenttype.name='Daily';
DELETE FROM paymenttype WHERE name='Daily';

DELETE FROM mark WHERE mark.mark<7;