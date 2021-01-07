USE book_list;

DROP PROCEDURE IF EXISTS count_books_per_categorie;
DELIMITER $$
CREATE PROCEDURE count_books_per_categorie()
BEGIN
	SELECT 
	(SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 1) AS "Romance" ,
	(SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 2) AS "Horror" ,
    (SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 3) AS "Sci-Fi" ,
    (SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 4) AS "History" ,
    (SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 5) AS "Biography" ,
    (SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 6) AS "Auto-biography" ,
    (SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 7) AS "Young adults" ,
    (SELECT COUNT(*) FROM book_list.isincategory WHERE Id_Genre = 8) AS "Children" 
	FROM book_list.isincategory
	LIMIT 1;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS add_book;
DELIMITER $$
CREATE PROCEDURE add_book(
		IN Title_p VARCHAR(100),
        IN ISBN_p INT,
        IN DatePublished_p Date,
        IN Id_Binding_p INT,
        IN Id_Author_p INT,
        IN Favorite_Book_p BOOLEAN)
BEGIN
		DECLARE Title_p VARCHAR(100);
        DECLARE ISBN_p, Id_Binding_p, Id_Author_p INT;
        DECLARE DatePublished_p Date;
        IF (Title_p IS NOT NULL) THEN
			INSERT INTO book_list.Book_Details VALUES (NULL, Title_p, ISBN_p, DatePublished_p, Favorite_Book_p, Id_Binding_p, Id_Author_p);
		ELSE 
			SELECT "A book must have a title" AS ERROR;
        END IF;
END $$
DELIMITER ;
