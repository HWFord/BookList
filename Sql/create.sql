DROP DATABASE IF EXISTS book_list;
CREATE DATABASE book_list;

USE book_list;

DROP DATABASE IF EXISTS Binding_Details;
CREATE TABLE Binding_Details(
   Id INT,
   Type VARCHAR(50),
   PRIMARY KEY(Id)
);

DROP DATABASE IF EXISTS Genre;
CREATE TABLE Genre(
   Id INT,
   Name VARCHAR(50),
   PRIMARY KEY(Id)
);

DROP DATABASE IF EXISTS Laguages;
CREATE TABLE Laguages(
   Id INT,
   WrittenLanguage VARCHAR(50),
   PRIMARY KEY(Id)
);

DROP DATABASE IF EXISTS Nationalites;
CREATE TABLE Nationalites(
   Id_Nationality INT NOT NULL AUTO_INCREMENT,
   Nationality VARCHAR(50),
   Birth_country VARCHAR(50),
   PRIMARY KEY(Id_Nationality)
);

DROP DATABASE IF EXISTS City;
CREATE TABLE City(
   Id_city INT NOT NULL AUTO_INCREMENT,
   city_name VARCHAR(50),
   PRIMARY KEY(Id_city)
);

DROP DATABASE IF EXISTS Postal_code;
CREATE TABLE Postal_code(
   Id_postalcode INT NOT NULL AUTO_INCREMENT,
   postal_code VARCHAR(10),
   PRIMARY KEY(Id_postalcode)
);

DROP DATABASE IF EXISTS Currency;
CREATE TABLE Currency(
   Id_currency INT NOT NULL AUTO_INCREMENT,
   Currency_name VARCHAR(50),
   PRIMARY KEY(Id_currency)
);

DROP DATABASE IF EXISTS Gender;
CREATE TABLE Gender(
   Id_gender INT NOT NULL AUTO_INCREMENT,
   Gender VARCHAR(50),
   PRIMARY KEY(Id_gender)
);

DROP DATABASE IF EXISTS Author_Details;
CREATE TABLE Author_Details(
   Id_Author INT NOT NULL AUTO_INCREMENT,
   Name VARCHAR(50),
   BooksWritten INT,
   Id_Nationality INT NOT NULL,
   PRIMARY KEY(Id_Author),
   FOREIGN KEY(Id_Nationality) REFERENCES Nationalites(Id_Nationality)
);

DROP DATABASE IF EXISTS Reader;
CREATE TABLE Reader(
   Id_Reader INT NOT NULL AUTO_INCREMENT,
   First_Name VARCHAR(50),
   Last_name VARCHAR(50),
   Birthday DATE,
   Id_gender INT NOT NULL,
   Id_Nationality INT NOT NULL,
   PRIMARY KEY(Id_Reader),
   FOREIGN KEY(Id_gender) REFERENCES Gender(Id_gender),
   FOREIGN KEY(Id_Nationality) REFERENCES Nationalites(Id_Nationality)
);

DROP DATABASE IF EXISTS Purchase;
CREATE TABLE Purchase(
   Id_purchase INT,
   purchase_date DATE,
   Price DECIMAL(15,2),
   Id_currency INT NOT NULL,
   PRIMARY KEY(Id_purchase),
   FOREIGN KEY(Id_currency) REFERENCES Currency(Id_currency)
);

DROP DATABASE IF EXISTS Address;
CREATE TABLE Address(
   Id_address INT NOT NULL AUTO_INCREMENT,
   street_name VARCHAR(50),
   Id_city INT NOT NULL,
   PRIMARY KEY(Id_address),
   FOREIGN KEY(Id_city) REFERENCES City(Id_city)
);

DROP DATABASE IF EXISTS Book_Details;
CREATE TABLE Book_Details(
   Id_Book INT NOT NULL AUTO_INCREMENT,
   Title VARCHAR(50),
   ISBN INT,
   DatePublished DATE,
   Favorite_Book BOOLEAN DEFAULT false,
   Id INT NOT NULL,
   Id_Author INT NOT NULL,
   PRIMARY KEY(Id_Book),
   UNIQUE(ISBN),
   FOREIGN KEY(Id) REFERENCES Binding_Details(Id),
   FOREIGN KEY(Id_Author) REFERENCES Author_Details(Id_Author)
);

DROP DATABASE IF EXISTS WishList;
CREATE TABLE WishList(
   Id_Wishlist INT NOT NULL AUTO_INCREMENT,
   Id_Book INT NOT NULL,
   PRIMARY KEY(Id_Wishlist),
   UNIQUE(Id_Book),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book)
);

DROP DATABASE IF EXISTS Owned;
CREATE TABLE Owned(
   Id_owned INT NOT NULL AUTO_INCREMENT,
   Id_Book INT NOT NULL,
   PRIMARY KEY(Id_owned),
   UNIQUE(Id_Book),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book)
);

DROP DATABASE IF EXISTS Lost;
CREATE TABLE Lost(
   Id_lost INT NOT NULL AUTO_INCREMENT,
   Id_owned INT NOT NULL,
   PRIMARY KEY(Id_lost),
   UNIQUE(Id_owned),
   FOREIGN KEY(Id_owned) REFERENCES Owned(Id_owned)
);

DROP DATABASE IF EXISTS Shop;
CREATE TABLE Shop(
   Id_shop VARCHAR(50) NOT NULL AUTO_INCREMENT,
   shop_name VARCHAR(50) NOT NULL,
   Id_address INT NOT NULL,
   PRIMARY KEY(Id_shop),
   FOREIGN KEY(Id_address) REFERENCES Address(Id_address)
);

DROP DATABASE IF EXISTS In_Book_Shelf;
CREATE TABLE In_Book_Shelf(
   Id_inbookshelf INT NOT NULL AUTO_INCREMENT,
   Id_owned INT NOT NULL,
   PRIMARY KEY(Id_inbookshelf),
   UNIQUE(Id_owned),
   FOREIGN KEY(Id_owned) REFERENCES Owned(Id_owned)
);

DROP DATABASE IF EXISTS isInCategory;
CREATE TABLE isInCategory(
   Id_Book INT,
   Id INT,
   PRIMARY KEY(Id_Book, Id),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id) REFERENCES Genre(Id)
);

DROP DATABASE IF EXISTS isWrittenIn;
CREATE TABLE isWrittenIn(
   Id_Book INT,
   Id INT,
   PRIMARY KEY(Id_Book, Id),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id) REFERENCES Laguages(Id)
);

DROP DATABASE IF EXISTS owns;
CREATE TABLE owns(
   Id_Book INT,
   Id_Reader INT,
   PRIMARY KEY(Id_Book, Id_Reader),
   FOREIGN KEY(Id_Book) REFERENCES Book_Details(Id_Book),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader)
);

DROP DATABASE IF EXISTS purchasedFromShop;
CREATE TABLE purchasedFromShop(
   Id_purchase INT,
   Id_shop VARCHAR(50),
   PRIMARY KEY(Id_purchase, Id_shop),
   FOREIGN KEY(Id_purchase) REFERENCES Purchase(Id_purchase),
   FOREIGN KEY(Id_shop) REFERENCES Shop(Id_shop)
);

DROP DATABASE IF EXISTS shopPurchased;
CREATE TABLE shopPurchased(
   Id_purchase INT,
   Id_shop VARCHAR(50),
   PRIMARY KEY(Id_purchase, Id_shop),
   FOREIGN KEY(Id_purchase) REFERENCES Purchase(Id_purchase),
   FOREIGN KEY(Id_shop) REFERENCES Shop(Id_shop)
);

DROP DATABASE IF EXISTS hasPostalCode;
CREATE TABLE hasPostalCode(
   Id_address INT,
   Id_postalcode INT,
   PRIMARY KEY(Id_address, Id_postalcode),
   FOREIGN KEY(Id_address) REFERENCES Address(Id_address),
   FOREIGN KEY(Id_postalcode) REFERENCES Postal_code(Id_postalcode)
);

DROP DATABASE IF EXISTS livesAt;
CREATE TABLE livesAt(
   Id_Reader INT,
   Id_address INT,
   PRIMARY KEY(Id_Reader, Id_address),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader),
   FOREIGN KEY(Id_address) REFERENCES Address(Id_address)
);

DROP DATABASE IF EXISTS readerPurchased;
CREATE TABLE readerPurchased(
   Id_owned INT,
   Id_purchase INT,
   PRIMARY KEY(Id_owned, Id_purchase),
   FOREIGN KEY(Id_owned) REFERENCES Owned(Id_owned),
   FOREIGN KEY(Id_purchase) REFERENCES Purchase(Id_purchase)
);

DROP DATABASE IF EXISTS hasFavoriteGenre;
CREATE TABLE hasFavoriteGenre(
   Id INT,
   Id_Reader INT,
   PRIMARY KEY(Id, Id_Reader),
   FOREIGN KEY(Id) REFERENCES Genre(Id),
   FOREIGN KEY(Id_Reader) REFERENCES Reader(Id_Reader)
);
