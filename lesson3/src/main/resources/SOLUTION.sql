ALTER TABLE student ALTER COLUMN birthday DATE NOT NULL;

ALTER TABLE mark ADD CONSTRAINT mark_limits CHECK(mark>=1 AND mark<=10);

ALTER TABLE subject ADD CONSTRAINT grade_limits CHECK(grade>=1 AND grade<=5);

ALTER TABLE paymenttype ADD UNIQUE(name);

ALTER TABLE payment ALTER COLUMN type_id BIGINT NOT NULL;
ALTER TABLE payment ALTER COLUMN amount DECIMAL NOT NULL;
ALTER TABLE payment ALTER COLUMN payment_date DateTime NOT NULL;