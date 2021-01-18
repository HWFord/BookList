DROP TRIGGER IF EXISTS duplicate_book;
DELIMITER $$
CREATE TRIGGER duplicate_book BEFORE INSERT
ON book_list.book_details FOR EACH ROW
BEGIN
        IF NEW.ISBN = NEW.ISBN THEN
                SET @msg = "ERROR: This book already exists in the database";
                SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = @msg;              
        END IF;
END $$
DELIMITER ;
