DROP PROCEDURE IF EXISTS count_books_per_categorie;

USE book_list;

DELIMITER $$
CREATE PROCEDURE count_books_per_categorie()
BEGIN
	SELECT 
	(SELECT COUNT(*) FROM book_list.isincategory)  AS "Incidents de documentation",
	(SELECT COUNT(*) FROM book_list.isincategory) AS "Incidents de merge",
	(SELECT COUNT(*) FROM book_list.isincategory) AS "Incidents de compilation"
	FROM incident.Documentation, incident.Merge, incident.Compilation
	LIMIT 1;
END $$

DELIMITER ;

INSERT INTO book_list VALUES

