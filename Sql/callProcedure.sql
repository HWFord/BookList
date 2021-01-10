USE book_List;

CALL count_books_per_categorie();
CALL add_book("Harry Potter and the prisonner of Azkaban", 0747574499, 1999-07-08, 1, 1);

#If isbn has 0 at start creates a problem
