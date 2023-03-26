INSERT INTO student (name, birthday, groupnumber) VALUES ('John', '1974-03-09', 1),
                                                         ('Chris', '1974-03-09', 1),
                                                         ('Carl', '1974-03-09', 1),

                                                         ('Oliver', '1974-03-09', 2),
                                                         ('James', '1974-03-09', 2),
                                                         ('Lucas', '1974-03-09', 2),
                                                         ('Henry', '1974-03-09', 2),

                                                         ('Jacob', '1974-03-09', 3),
                                                         ('Logan', '1974-03-09', 3),

                                                         ('studentOne', '1974-03-09', 4),
                                                         ('studentTwo', '1974-03-09', 4),

                                                         ('studentThree', '1974-03-09', 5),
                                                         ('studentFour', '1974-03-09', 5);

INSERT INTO subject (name, description, grade) VALUES ('Art', '1974-03-09', 1),
                                                      ('Music', '1974-03-09', 1),

                                                      ('Geography', '1974-03-09', 2),
                                                      ('History', '1974-03-09', 2),

                                                      ('PE', '1974-03-09', 3),
                                                      ('Math', '1974-03-09', 3),

                                                      ('Science', '1974-03-09', 4),
                                                      ('IT', '1974-03-09', 4),

                                                      ('Chemistry', '1974-03-09', 5),
                                                      ('Literature', '1974-03-09', 5);


INSERT INTO paymenttype (name) VALUES ('DAILY'),
                                      ('WEEKLY'),
                                      ('MONTHLY');

INSERT INTO payment (type_id, amount, payment_date, student_id) VALUES ((SELECT id FROM paymenttype WHERE name='WEEKLY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='John')),
                                                                       ((SELECT id FROM paymenttype WHERE name='MONTHLY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Oliver')),
                                                                       ((SELECT id FROM paymenttype WHERE name='WEEKLY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Henry')),
                                                                       ((SELECT id FROM paymenttype WHERE name='DAILY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='James')),
                                                                       ((SELECT id FROM paymenttype WHERE name='DAILY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Lucas')),
                                                                       ((SELECT id FROM paymenttype WHERE name='DAILY'), 2, '1974-03-09', (SELECT id FROM student WHERE name='Carl'));


INSERT INTO mark (student_id, subject_id, mark) VALUES ((SELECT id FROM student WHERE name='Chris'), (SELECT id FROM subject WHERE name='Art'), 8),
                                                       ((SELECT id FROM student WHERE name='Oliver'), (SELECT id FROM subject WHERE name='History'), 5),
                                                       ((SELECT id FROM student WHERE name='James'), (SELECT id FROM subject WHERE name='Geography'), 9),
                                                       ((SELECT id FROM student WHERE name='Jacob'), (SELECT id FROM subject WHERE name='Math'), 4),
                                                       ((SELECT id FROM student WHERE name='Logan'), (SELECT id FROM subject WHERE name='PE'), 9),
                                                       ((SELECT id FROM student WHERE name='Logan'), (SELECT id FROM subject WHERE name='Art'), 8),
                                                       ((SELECT id FROM student WHERE name='Jacob'), (SELECT id FROM subject WHERE name='Art'), 8);
