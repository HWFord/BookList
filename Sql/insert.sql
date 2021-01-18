USE book_list;

INSERT INTO binding_details VALUES (NULL, "hard_cover");
INSERT INTO binding_details VALUES (NULL, "Soft_cover");

INSERT INTO Genre VALUES (NULL, "Romance");
INSERT INTO Genre VALUES (NULL, "Horror");
INSERT INTO Genre VALUES (NULL, "Sci-Fi");
INSERT INTO Genre VALUES (NULL, "History");
INSERT INTO Genre VALUES (NULL, "Biography");
INSERT INTO Genre VALUES (NULL, "Auto-biography");
INSERT INTO Genre VALUES (NULL, "Young adults");
INSERT INTO Genre VALUES (NULL, "Children");

INSERT INTO languages (Writtenlanguage) VALUES("English");
INSERT INTO languages (Writtenlanguage) VALUES("French");
INSERT INTO languages (Writtenlanguage) VALUES("German");
INSERT INTO languages (Writtenlanguage) VALUES("Spanish");
INSERT INTO languages (Writtenlanguage) VALUES("Italian");
INSERT INTO languages (Writtenlanguage) VALUES("Portugese");
INSERT INTO languages (Writtenlanguage) VALUES("Finnish");
INSERT INTO languages (Writtenlanguage) VALUES("Dutch");
INSERT INTO languages (Writtenlanguage) VALUES("Chinese");

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

INSERT INTO City (city_name) VALUES ("Paris");
INSERT INTO City (city_name) VALUES ("Brentwood");
INSERT INTO City (city_name) VALUES ("Rennes");

INSERT INTO Postal_code VALUES (Null, "CM15 OHN");
INSERT INTO Postal_code VALUES (Null, "35000");

INSERT INTO Gender VALUES (NULL,"Female");
INSERT INTO Gender VALUES (NULL,"Male");
INSERT INTO Gender VALUES (NULL,"Not specified");

INSERT INTO People VALUES (NULL,"Joanne", "Rowling",1965-07-31, NULL, 1, 1);
INSERT INTO Author (BooksWritten, Id_people) VALUES (36, 1);

INSERT INTO Address VALUES (NULL,"Blackmore Road",1, 2);
INSERT INTO People VALUES (NULL,"Hannah", "FORD", 1997-06-18, 1, 1, 1);
INSERT INTO Reader VALUES (Null,1);

INSERT INTO Address VALUES (NULL,"1 Rue Jean Jaurès", 1, 2);
INSERT INTO Shop VALUES (NULL, "Libraire Greenwich", 2);

INSERT INTO book_details VALUES (NULL, "Harry Potter and the philosopher's stone", 9781408855652, 1997-06-28, 1, 1);
INSERT INTO book_details VALUES (NULL, "Harry Potter and the chamber of secrets", 1408855666, 1998-07-02, 1, 1);
INSERT INTO book_details VALUES (NULL, "The Ickabog", 2075150559, 2020-11-10, 2, 1);

INSERT INTO isInCategory VALUES (1,7);
INSERT INTO isInCategory VALUES (2,7);
INSERT INTO isInCategory VALUES (3,8);

INSERT INTO isWrittenIn VALUES (1,1);
INSERT INTO isWrittenIn VALUES (2,1);
INSERT INTO isWrittenIn VALUES (3,1);

INSERT INTO Owns VALUES (1, 1);
INSERT INTO Owns VALUES (2, 1);

INSERT INTO hasPostalCode VALUES (2,1);
INSERT INTO hasPostalCode VALUES (3,2);

INSERT INTO hasFavoriteGenre VALUES (7, 1);

INSERT INTO Wants VALUES (3, 1);
