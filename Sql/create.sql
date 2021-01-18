DROP DATABASE IF EXISTS book_list;
CREATE DATABASE book_list;

USE book_list;

DROP TABLE IF EXISTS Binding_details;
CREATE TABLE Binding_Details(
   Id_Binding INT NOT NULL AUTO_INCREMENT,
   Type VARCHAR(50),
   PRIMARY KEY(Id_Binding)
);

DROP TABLE IF EXISTS Genre;
CREATE TABLE Genre(
   Id_Genre INT NOT NULL AUTO_INCREMENT,
   Name VARCHAR(50),
   PRIMARY KEY(Id_Genre)
);

DROP TABLE IF EXISTS Languages;
CREATE TABLE Languages(
   Id_Languages INT NOT NULL AUTO_INCREMENT,
   WrittenLanguage VARCHAR(50),
   PRIMARY KEY(Id_Languages)
);

DROP TABLE IF EXISTS Nationalites;
CREATE TABLE Nationalites(
   Id_Nationality INT NOT NULL AUTO_INCREMENT,
   Nationality VARCHAR(50),
   Birth_country VARCHAR(50),
   PRIMARY KEY(Id_Nationality)
);

CREATE TABLE City(
   Id_city INT NOT NULL AUTO_INCREMENT,
   city_name VARCHAR(50),
   PRIMARY KEY(Id_city)
);

DROP TABLE IF EXISTS Postal_code;
CREATE TABLE Postal_code(
   Id_postalcode INT NOT NULL AUTO_INCREMENT,
   postal_code VARCHAR(10),
   PRIMARY KEY(Id_postalcode)
);

DROP TABLE IF EXISTS Gender;
CREATE TABLE Gender(
   Id_gender INT NOT NULL AUTO_INCREMENT,
   Gender VARCHAR(50),
   PRIMARY KEY(Id_gender)
);

DROP TABLE IF EXISTS Address;
CREATE TABLE Address(
   Id_address INT NOT NULL AUTO_INCREMENT,
   street_name VARCHAR(50),
   Id_postalcode INT NOT NULL,
   Id_city INT NOT NULL,
   PRIMARY KEY(Id_address),
   FOREIGN KEY(Id_postalcode) REFERENCES Postal_code(Id_postalcode),
   FOREIGN KEY(Id_city) REFERENCES City(Id_city)
);


DROP TABLE IF EXISTS People;
CREATE TABLE People(
   Id_people INT NOT NULL AUTO_INCREMENT,
   person_firstname VARCHAR(50),
   person_lastname VARCHAR(50),
   birthday DATE,
   Id_address INT,
   Id_Nationality INT NOT NULL,
   Id_gender INT NOT NULL,
   PRIMARY KEY(Id_people),
   FOREIGN KEY(Id_address) REFERENCES Address(Id_address),
   FOREIGN KEY(Id_Nationality) REFERENCES Nationalites(Id_Nationality),
   FOREIGN KEY(Id_gender) REFERENCES Gender(Id_gender)
);


DROP TABLE IF EXISTS Author;
CREATE TABLE Author(
   Id_Author INT NOT NULL AUTO_INCREMENT,
   BooksWritten INT,
   Id_people INT NOT NULL,
   PRIMARY KEY(Id_Author),
   UNIQUE(Id_people),
   FOREIGN KEY(Id_people) REFERENCES People(Id_people)
);

DROP TABLE IF EXISTS Reader;
CREATE TABLE Reader(
   Id_Reader INT NOT NULL AUTO_INCREMENT,
   Id_people INT NOT NULL,
   PRIMARY KEY(Id_Reader),
   UNIQUE(Id_people),
   FOREIGN KEY(Id_people) REFERENCES People(Id_people)
);

DROP TABLE IF EXISTS Shop;
CREATE TABLE Shop(
   Id_shop INT NOT NULL AUTO_INCREMENT,
   shop_name VARCHAR(50) NOT NULL,
   Id_address INT NOT NULL,
   PRIMARY KEY(Id_shop),
   FOREIGN KEY(Id_address) REFERENCES Address(Id_address)
);

DROP TABLE IF EXISTS Book_Details;
CREATE TABLE Book_Details(
   Id_Book INT NOT NULL AUTO_INCREMENT,
   Title VARCHAR(100),
   ISBN INT,
   DatePublished DATE,
   Id_Binding INT NOT NULL,
   Id_Author INT NOT NULL,
   PRIMARY KEY(Id_Book),
   UNIQUE(ISBN),
   FOREIGN KEY(Id_Binding) REFERENCES Binding_Details(Id_Binding),
   FOREIGN KEY(Id_Author) REFERENCES Author(Id_Author)
);

DROP TABLE IF EXISTS isInCategory;
CREATE TABLE isInCategory(
   Id_Book INT,
   Id_Genre INT,
   PRIMARY KEY(Id_Book, Id_Genre),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Genre) REFERENCES Genre(Id_Genre)
);

DROP TABLE IF EXISTS isWrittenIn;
CREATE TABLE isWrittenIn(
   Id_Book INT,
   Id_Languages INT,
   PRIMARY KEY(Id_Book, Id_Languages),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Languages) REFERENCES Languages(Id_Languages)
);

DROP TABLE IF EXISTS owns;
CREATE TABLE owns(
   Id_Book INT,
   Id_Reader INT,
   PRIMARY KEY(Id_Book, Id_Reader),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader)
);

DROP TABLE IF EXISTS hasPostalcode;
CREATE TABLE hasPostalCode(
   Id_city INT,
   Id_postalcode INT,
   PRIMARY KEY(Id_city, Id_postalcode),
   FOREIGN KEY(Id_city) REFERENCES City(Id_city),
   FOREIGN KEY(Id_postalcode) REFERENCES Postal_code(Id_postalcode)
);

DROP TABLE IF EXISTS hasFavoriteGenre;
CREATE TABLE hasFavoriteGenre(
   Id_Genre INT,
   Id_Reader INT,
   PRIMARY KEY(Id_Genre, Id_Reader),
   FOREIGN KEY(Id_Genre) REFERENCES Genre(Id_Genre),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader)
);

DROP TABLE IF EXISTS wants;
CREATE TABLE wants(
   Id_Book INT,
   Id_Reader INT,
   PRIMARY KEY(Id_Book, Id_Reader),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader)
);

DROP TABLE IF EXISTS buys;
CREATE TABLE buys(
   Id_Book INT,
   Id_Reader INT,
   Id_shop INT,
   price DECIMAL(15,2),
   currency VARCHAR(50),
   PRIMARY KEY(Id_Book, Id_Reader, Id_shop),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader),
   FOREIGN KEY(Id_shop) REFERENCES Shop(Id_shop)
);

DROP TABLE IF EXISTS boughtBy;
CREATE TABLE boughtBy(
   Id_Book INT,
   Id_shop INT,
   PRIMARY KEY(Id_Book, Id_shop),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_shop) REFERENCES Shop(Id_shop)
);

DROP TABLE IF EXISTS hasFavoriteBook;
CREATE TABLE hasFavoriteBook(
   Id_Book INT,
   Id_Reader INT,
   PRIMARY KEY(Id_Book, Id_Reader),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader)
);
