USE book_list;

INSERT INTO binding_details (Type) VALUES("hard_cover");
INSERT INTO binding_details (Type) VALUES("Soft_cover");

INSERT INTO category_details (Name) VALUES("Romance");
INSERT INTO category_details (Name) VALUES("Horror");
INSERT INTO category_details (Name) VALUES("Sci-Fi");
INSERT INTO category_details (Name) VALUES("History");
INSERT INTO category_details (Name) VALUES("Biography");
INSERT INTO category_details (Name) VALUES("Auto-biography");
INSERT INTO category_details (Name) VALUES("Young adults");
INSERT INTO category_details (Name) VALUES("Children");

INSERT INTO languages (Writtenlanguage) VALUES("English");
INSERT INTO languages (Writtenlanguage) VALUES("French");
INSERT INTO languages (Writtenlanguage) VALUES("German");
INSERT INTO languages (Writtenlanguage) VALUES("Spanish");
INSERT INTO languages (Writtenlanguage) VALUES("Italian");
INSERT INTO languages (Writtenlanguage) VALUES("Portugese");
INSERT INTO languages (Writtenlanguage) VALUES("Finnish");
INSERT INTO languages (Writtenlanguage) VALUES("Dutch");
INSERT INTO nationalites (Nationality) VALUES("Chinese");

INSERT INTO nationalites (Nationality) VALUES("English");
INSERT INTO nationalites (Nationality) VALUES("French");
INSERT INTO nationalites (Nationality) VALUES("French");
INSERT INTO nationalites (Nationality) VALUES("German");
INSERT INTO nationalites (Nationality) VALUES("Italian");
INSERT INTO nationalites (Nationality) VALUES("Spanish");
INSERT INTO nationalites (Nationality) VALUES("Americain");
INSERT INTO nationalites (Nationality) VALUES("Mexicain");
INSERT INTO nationalites (Nationality) VALUES("Chinese");
INSERT INTO nationalites (Nationality) VALUES("Belgian");

INSERT INTO author_details (Name, BooksWritten, Id_1) VALUES ("JK Rowling",36,1);

INSERT INTO book_details (Date_Published, Title, ISBN10, Id_1, Id_2) VALUES (1997-06-28, "Harry Potter and the philosopher's stone",9781408855652,2,1);
INSERT INTO book_details (Date_Published, Title, ISBN10, Id_1, Id_2) VALUES (1998-07-02, "Harry Potter and the chamber of secrets",1408855666,2,1);
INSERT INTO book_details (Date_Published, Title, ISBN10, Id_1, Id_2) VALUES (2020-11-10, "The Ickabog",2075150559,1,1);


INSERT INTO Wishlist (Id_1) VALUES (3);
INSERT INTO owned (Id_1) VALUES (1);
INSERT INTO owned (Id_1) VALUES (2);
