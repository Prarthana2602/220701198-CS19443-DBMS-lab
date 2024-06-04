1. Create a sequence to be used with the primary key column of the DEPT table. The sequence should start at 200 and have a maximum value of 1000. Have your sequence increment by ten
   numbers. Name the sequence DEPT_ID_SEQ.

	CREATE SEQUENCE dept_id_seq
	START WITH 200
	INCREMENT BY 10
	MAXVALUE 1000;

2. Write a query in a script to display the following information about your sequences: sequence
   name, maximum value, increment size, and last number.

	SELECT sequence_name, max_value, increment_by, last_number
	FROM user_sequences;

3. Write a script to insert two rows into the DEPT table. Name your script lab12_3.sql. Be sure to use the sequence that you created for the ID column. Add two departments named Education
   and Administration. Confirm your additions. Run the commands in your script.

	INSERT INTO dept
	VALUES (dept_id_seq.nextval, ’Education’);
	INSERT INTO dept
	VALUES (dept_id_seq.nextval, ’Administration’);

4. Display the indexes and uniqueness that exist in the data dictionary for the EMP table. Save the statement into a script named lab12_5.sql.

	SELECT index_name, table_name, uniqueness
	FROM user_indexes
	WHERE table_name = ’EMP’;