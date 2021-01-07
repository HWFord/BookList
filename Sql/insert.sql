USE book_list;

INSERT INTO binding_details (Type) VALUES("hard_cover");
INSERT INTO binding_details (Type) VALUES("Soft_cover");

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

INSERT INTO author_details VALUES (NULL, "JK Rowling", 36, 1);

INSERT INTO Binding_Details VALUES (NULL, "Hard cover");

INSERT INTO book_details VALUES (NULL, "Harry Potter and the philosopher's stone", 9781408855652, 1997-06-28, true, 1, 1);
INSERT INTO book_details VALUES (NULL, "Harry Potter and the chamber of secrets", 1408855666, 1998-07-02, true, 1, 1);
INSERT INTO book_details VALUES (NULL, "The Ickabog",2075150559, 2020-11-10, false, 2, 1);

INSERT INTO WishList VALUES (NULL, 3);
INSERT INTO Owned VALUES (NULL, 1);
INSERT INTO Owned VALUES (NULL, 2);

INSERT INTO Gender VALUES (NULL,"Female");
INSERT INTO Gender VALUES (NULL,"Male");
INSERT INTO Gender VALUES (NULL,"Not specified");

INSERT INTO CITY VALUES(NULL, "Brentwood");
INSERT INTO Postal_Code VALUES (NULL, "CM15 OHN");

INSERT INTO Address VALUES (NULL, "Blackmore Road", 1, 1);

INSERT INTO Reader VALUES (NULL, "Hannah", "Ford", 18-06-1997, 1, 1, 1);

INSERT INTO isInCategory VALUES(1, 7);
INSERT INTO isInCategory VALUES(2, 7);
INSERT INTO isInCategory VALUES(3, 8);

