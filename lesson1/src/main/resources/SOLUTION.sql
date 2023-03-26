CREATE TABLE student (id BIGINT, name VARCHAR(255), birthday DATE, groupnumber INT, PRIMARY KEY(id));
CREATE TABLE subject (id BIGINT, name VARCHAR(255), description VARCHAR(255), grade INT, PRIMARY KEY(id));
CREATE TABLE paymenttype (id BIGINT, name VARCHAR(255), PRIMARY KEY(id));
CREATE TABLE payment (id BIGINT, type_id BIGINT, amount DECIMAL, student_id BIGINT, payment_date TIMESTAMP, PRIMARY KEY(id), FOREIGN KEY(type_id) REFERENCES paymenttype(id), FOREIGN KEY(student_id) REFERENCES student(id));
CREATE TABLE mark (id BIGINT, student_id BIGINT, subject_id BIGINT, mark INT, PRIMARY KEY(id), FOREIGN KEY(student_id) REFERENCES student(id), FOREIGN KEY(subject_id) REFERENCES subject(id));