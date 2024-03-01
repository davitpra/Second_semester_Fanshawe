--Determine the last used category Id
SELECT MAX(categoryid) AS "Last Used Order#" FROM categories;

--Create a new SEQUENCE for the Categories table. Have the new sequence start at the next available multiple of 10 and increment by 10’s

CREATE SEQUENCE category_id_sequence
INCREMENT BY 10
START WITH 10
NOCACHE
NOCYCLE;

--Add a single SELECT statement to confirm the sequence exists by selecting it from the meta data table USER_SEQUENCES

SELECT sequence_name, min_value, increment_by, last_number FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'CATEGORY_ID_SEQUENCE';

--Add an INSERT statement to add a new category to the categories table
INSERT INTO 
    categories 
        (categoryid, categoryname, description) 
    VALUES 
        (category_id_sequence.NEXTVAL, 'New Category', 'Ski Equipment');

--Add another INSERT statement to add another category

INSERT INTO 
    categories 
        (categoryid, categoryname) 
    VALUES 
        (category_id_sequence.NEXTVAL, 'Football Equip');

--Add a Select statement to the script to retrieve all data for the 2 new categories, plus your name (not mine)

SELECT categoryid, description, categoryname, 'David Prado' FROM categories WHERE categoryid > 6;

--Add a single Update statement to the script to update the Ski Equipment category so the description is now Alpine Equipment

UPDATE categories SET description = 'Alpine Equipment' WHERE categoryname = 'New Category';

--Issue the same select as in step 6 again to show the new postal codes

SELECT categoryid, description, categoryname, 'David Prado' FROM categories WHERE categoryid > 6;

--Add a single DELETE to the script to remove the 2 new categories

DELETE FROM categories WHERE categoryid > 6;

--Issue a SELECT to dump out the remaining categories

SELECT * FROM categories;

--Add a drop to the script to remove the sequence created in step 2

DROP SEQUENCE category_id_sequence;

--Repeat the code from the SELECT statement from step 3 showing the meta data again (should be empty)

SELECT sequence_name, min_value, increment_by, last_number FROM USER_SEQUENCES WHERE SEQUENCE_NAME = 'CATEGORY_ID_SEQUENCE';
