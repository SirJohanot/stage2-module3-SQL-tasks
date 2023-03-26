CREATE TABLE Student (id BIGINT, name VARCHAR(255), birthday DATE, GROUP INT, PRIMARY KEY(id));
CREATE TABLE Subject (id BIGINT, name VARCHAR(255), description VARCHAR(255), grade INT, PRIMARY KEY(id));
CREATE TABLE PaymentType (id BIGINT, name VARCHAR(255), PRIMARY KEY(id));
CREATE TABLE Payment (id BIGINT, type_id BIGINT, amount DECIMAL, student_id BIGINT, payment_DATE TIMESTAMP, PRIMARY KEY(id), FOREIGN KEY(type_id) REFERENCES PaymentType(id), FOREIGN KEY(student_id) REFERENCES Student(id));
CREATE TABLE Mark (id BIGINT, student_id BIGINT, subject_id BIGINT, mark INT, PRIMARY KEY(id), FOREIGN KEY(student_id) REFERENCES Student(id), FOREIGN KEY(subject_id) REFERENCES Subject(id));