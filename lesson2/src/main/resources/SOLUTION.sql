INSERT INTO student (name, birthday, groupnumber) VALUES('John', '1974-03-09', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES('Chris', '1974-03-09', 1);
INSERT INTO student (name, birthday, groupnumber) VALUES('Carl', '1974-03-09', 1);

INSERT INTO student (name, birthday, groupnumber) VALUES('Oliver', '1974-03-09', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES('James', '1974-03-09', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES('Lucas', '1974-03-09', 2);
INSERT INTO student (name, birthday, groupnumber) VALUES('Henry', '1974-03-09', 2);

INSERT INTO student (name, birthday, groupnumber) VALUES('Jacob', '1974-03-09', 3);
INSERT INTO student (name, birthday, groupnumber) VALUES('Logan', '1974-03-09', 3);

INSERT INTO student (name, birthday, groupnumber) VALUES('studentOne', '1974-03-09', 4);
INSERT INTO student (name, birthday, groupnumber) VALUES('studentTwo', '1974-03-09', 4);

INSERT INTO student (name, birthday, groupnumber) VALUES('studentThree', '1974-03-09', 5);
INSERT INTO student (name, birthday, groupnumber) VALUES('studentFour', '1974-03-09', 5);

INSERT INTO subject (name, description, grade) VALUES('Art', '1974-03-09', 1);
INSERT INTO subject (name, description, grade) VALUES('Music', '1974-03-09', 1);

INSERT INTO subject (name, description, grade) VALUES('Geography', '1974-03-09', 2);
INSERT INTO subject (name, description, grade) VALUES('History', '1974-03-09', 2);

INSERT INTO subject (name, description, grade) VALUES('PE', '1974-03-09', 3);
INSERT INTO subject (name, description, grade) VALUES('Math', '1974-03-09', 3);

INSERT INTO subject (name, description, grade) VALUES('Science', '1974-03-09', 4);
INSERT INTO subject (name, description, grade) VALUES('IT', '1974-03-09', 4);

INSERT INTO subject (name, description, grade) VALUES('Chemistry', '1974-03-09', 5);
INSERT INTO subject (name, description, grade) VALUES('Literature', '1974-03-09', 5);


INSERT INTO paymenttype (name) VALUES('DAILY');
INSERT INTO paymenttype (name) VALUES('WEEKLY');
INSERT INTO paymenttype (name) VALUES('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES((SELECT id FROM paymenttype WHERE name='WEEKLY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='John'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES((SELECT id FROM paymenttype WHERE name='MONTHLY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Oliver'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES((SELECT id FROM paymenttype WHERE name='WEEKLY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Henry'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES((SELECT id FROM paymenttype WHERE name='DAILY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='James'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES((SELECT id FROM paymenttype WHERE name='DAILY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Lucas'));
INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES((SELECT id FROM paymenttype WHERE name='DAILY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Carl'));


INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='Chris'), (SELECT id FROM subject WHERE name='Art'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='Oliver'), (SELECT id FROM subject WHERE name='History'), 5);
INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='James'), (SELECT id FROM subject WHERE name='Geography'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='Jacob'), (SELECT id FROM subject WHERE name='Math'), 4);
INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='Logan'), (SELECT id FROM subject WHERE name='PE'), 9);
INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='Logan'), (SELECT id FROM subject WHERE name='Art'), 8);
INSERT INTO mark (student_id, subject_id, mark) VALUES((SELECT id FROM student WHERE name='Jacob'), (SELECT id FROM subject WHERE name='Art'), 8);
