ALTER TABLE student ALTER COLUMN birthday SET NOT NULL;

ALTER TABLE mark ADD CONSTRAINT mark_limits (mark>=1 AND mark<=10);
ALTER TABLE mark ALTER COLUMN subject_id SET NOT NULL;

ALTER TABLE subject ADD CONSTRAINT grade_limits (grade>=1 AND mark<=5);

ALTER TABLE paymenttype ALTER COLUMN name SET UNIQUE;

ALTER TABLE payment ALTER COLUMN type_id SET NOT NULL;
ALTER TABLE payment ALTER COLUMN amount SET NOT NULL;
ALTER TABLE payment ALTER COLUMN payment_date SET NOT NULL;