-- ARTISTS
INSERT INTO ARTISTS (ArtistID, ArtistName) VALUES (1, 'Frank Ocean');
INSERT INTO ARTISTS (ArtistID, ArtistName) VALUES (2, 'Kendrick Lamar');
INSERT INTO ARTISTS (ArtistID, ArtistName) VALUES (3, 'Tyler, The Creator');
INSERT INTO ARTISTS (ArtistID, ArtistName) VALUES (4, 'SZA');
INSERT INTO ARTISTS (ArtistID, ArtistName) VALUES (5, 'Steve Lacy');

-- GENRES
INSERT INTO GENRES (GenreID, GenreName) VALUES (1, 'HipHop');
INSERT INTO GENRES (GenreID, GenreName) VALUES (2, 'RNB');
INSERT INTO GENRES (GenreID, GenreName) VALUES (3, 'Indie');
INSERT INTO GENRES (GenreID, GenreName) VALUES (4, 'Drama');
INSERT INTO GENRES (GenreID, GenreName) VALUES (5, 'Animation');
INSERT INTO GENRES (GenreID, GenreName) VALUES (6, 'Action');

-- RATINGS
INSERT INTO RATINGS (RatingID, RatingCode, RatingDesc) VALUES (1, 'G', 'General audiences');
INSERT INTO RATINGS (RatingID, RatingCode, RatingDesc) VALUES (2, 'PG', 'Parental guidance suggested');
INSERT INTO RATINGS (RatingID, RatingCode, RatingDesc) VALUES (3, 'PG-13', 'Parents strongly cautioned');
INSERT INTO RATINGS (RatingID, RatingCode, RatingDesc) VALUES (4, 'R', 'Restricted');

-- ALBUMS
-- ALBUMS
INSERT INTO ALBUMS (ProductID, ArtistID, AlbumGenreID, AlbumName, MediaFormat, Songs, SalesYTD, InventoryAmount, Price)
VALUES (101, 1, 2, 'Blonde', 'Vinyl',
'1. Nikes | 2. Ivy | 3. Pink + White | 4. Be Yourself | 5. Solo | 6. Skyline To | 7. Self Control | 8. Good Guy | 9. Nights | 10. Solo (Reprise) | 11. Pretty Sweet | 12. Facebook Story | 13. Close to You | 14. White Ferrari | 15. Seigfried | 16. Godspeed | 17. Futura Free',
180, 15, 69.99);

INSERT INTO ALBUMS (ProductID, ArtistID, AlbumGenreID, AlbumName, MediaFormat, Songs, SalesYTD, InventoryAmount, Price)
VALUES (102, 2, 1, 'DAMN.', 'CD',
'1. BLOOD. | 2. DNA. | 3. YAH. | 4. ELEMENT. | 5. FEEL. | 6. LOYALTY. | 7. PRIDE. | 8. HUMBLE. | 9. LUST. | 10. LOVE. | 11. XXX. | 12. FEAR. | 13. GOD. | 14. DUCKWORTH.',
130, 30, 14.99);

INSERT INTO ALBUMS (ProductID, ArtistID, AlbumGenreID, AlbumName, MediaFormat, Songs, SalesYTD, InventoryAmount, Price)
VALUES (103, 3, 1, 'Flower Boy', 'CD',
'1. Foreword | 2. Where This Flower Blooms | 3. Sometimes... | 4. See You Again | 5. Who Dat Boy | 6. Pothole | 7. Garden Shed | 8. Boredom | 9. I Ain''t Got Time! | 10. Droppin'' Seeds | 11. November | 12. Glitter | 13. Enjoy Right Now, Today',
110, 25, 14.99);

INSERT INTO ALBUMS (ProductID, ArtistID, AlbumGenreID, AlbumName, MediaFormat, Songs, SalesYTD, InventoryAmount, Price)
VALUES (104, 4, 2, 'Ctrl', 'Vinyl',
'1. Supermodel | 2. Love Galore | 3. Doves in the Wind | 4. Drew Barrymore | 5. Prom | 6. The Weekend | 7. Go Gina | 8. Garden | 9. Broken Clocks | 10. Anything | 11. Wavy (Interlude) | 12. Normal Girl | 13. Pretty Little Birds | 14. 20 Something',
90, 20, 39.99);

INSERT INTO ALBUMS (ProductID, ArtistID, AlbumGenreID, AlbumName, MediaFormat, Songs, SalesYTD, InventoryAmount, Price)
VALUES (105, 5, 3, 'Gemini Rights', 'CD',
'1. Static | 2. Helmet | 3. Mercury | 4. Buttons | 5. Bad Habit | 6. 2Gether (Enterlude) | 7. Cody Freestyle | 8. Amber | 9. Sunshine (feat. Fousheé) | 10. Give You the World',
75, 15, 14.99);

INSERT INTO ALBUMS (ProductID, ArtistID, AlbumGenreID, AlbumName, MediaFormat, Songs, SalesYTD, InventoryAmount, Price)
VALUES (106, 1, 2, 'channel ORANGE', 'Vinyl',
'1. Start | 2. Thinkin Bout You | 3. Fertilizer | 4. Sierra Leone | 5. Sweet Life | 6. Not Just Money | 7. Super Rich Kids | 8. Pilot Jones | 9. Crack Rock | 10. Pyramids | 11. Lost | 12. White | 13. Monks | 14. Bad Religion | 15. Pink Matter | 16. Forrest Gump | 17. End',
100, 20, 59.99);

-- MOVIES
INSERT INTO MOVIES (ProductID, MovieName, Director, RatingID, MovieGenreID, MediaFormat, SalesYTD, InventoryAmount, Price)
VALUES (201, 'Moonlight', 'Barry Jenkins', 4, 4, 'Blu-Ray', 55, 25, 19.99);

INSERT INTO MOVIES (ProductID, MovieName, Director, RatingID, MovieGenreID, MediaFormat, SalesYTD, InventoryAmount, Price)
VALUES (202, 'Creed', 'Ryan Coogler', 3, 6, 'DVD', 120, 50, 14.99);

INSERT INTO MOVIES (ProductID, MovieName, Director, RatingID, MovieGenreID, MediaFormat, SalesYTD, InventoryAmount, Price)
VALUES (203, 'Spider-Man: Into the Spider-Verse', 'Bob Persichetti', 2, 5, 'DVD', 200, 100, 24.99);

INSERT INTO MOVIES (ProductID, MovieName, Director, RatingID, MovieGenreID, MediaFormat, SalesYTD, InventoryAmount, Price)
VALUES (204, 'Midsommar', 'Ari Aster', 4, 4, 'Blu-Ray', 45, 20, 17.99);

INSERT INTO MOVIES (ProductID, MovieName, Director, RatingID, MovieGenreID, MediaFormat, SalesYTD, InventoryAmount, Price)
VALUES (205, 'La La Land', 'Damien Chazelle', 3, 4, 'Blu-Ray', 150, 70, 21.99);

-- PRODUCTS: Music
INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (101, 'ALB', 'Blonde', 180, 15, 69.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (102, 'ALB', 'DAMN.', 130, 30, 14.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (103, 'ALB', 'Flower Boy', 110, 25, 14.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (104, 'ALB', 'Ctrl', 90, 20, 39.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (105, 'ALB', 'Gemini Rights', 75, 15, 14.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (106, 'ALB', 'channel ORANGE', 100, 20, 59.99);

-- PRODUCTS: Movies
INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (201, 'MOV', 'Moonlight', 55, 15, 19.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (202, 'MOV', 'Creed', 120, 50, 14.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (203, 'MOV', 'Spider-Man: Into the Spider-Verse', 200, 100, 24.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (204, 'MOV', 'Midsommar', 45, 20, 17.99);

INSERT INTO PRODUCTS (ProductID, ProductType, Title, SalesYTD, InventoryAmount, Price)
VALUES (205, 'MOV', 'La La Land', 150, 70, 21.99);

-- CUSTOMER
INSERT INTO CUSTOMER (CustomerID, CustomerName, Email, PhoneNumber, Address, DateOfBirth)
VALUES (1, 'Jordan Smith', 'jordan.smith@example.com', 4165551234, '123 Queen St W, Toronto, ON', '1998-04-12');

INSERT INTO CUSTOMER (CustomerID, CustomerName, Email, PhoneNumber, Address, DateOfBirth)
VALUES (2, 'Ava Johnson', 'ava.j@example.com', 6475559876, '456 Bloor St E, Toronto, ON', '2001-09-22');

INSERT INTO CUSTOMER (CustomerID, CustomerName, Email, PhoneNumber, Address, DateOfBirth)
VALUES (3, 'Daniel Lee', 'daniel.lee@example.com', 4375551122, '789 Spadina Ave, Toronto, ON', '1995-06-30');

-- EMPLOYEE
INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, Email, PhoneNumber, EmployeeRole)
VALUES (1, 'Emily Davis', 'emily.davis@store.com', 4165552345, 'Sales Associate');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, Email, PhoneNumber, EmployeeRole)
VALUES (2, 'Marcus Brown', 'marcus.brown@store.com', 6475556789, 'Inventory Manager');

INSERT INTO EMPLOYEE (EmployeeID, EmployeeName, Email, PhoneNumber, EmployeeRole)
VALUES (3, 'Sophia Patel', 'sophia.patel@store.com', 4375553456, 'Cashier');

-- ORDERS
INSERT INTO ORDERS (OrderID, CustomerID, EmployeeID, OrderDate, TotalAmount, Status, PaymentDate, PaymentMethod, PaymentStatus, Title)
VALUES (1, 1, 1, '2025-09-01', 89.98, 'Completed', '2025-09-02', 'Credit Card', 'Paid', 'Blonde + Moonlight');

INSERT INTO ORDERS (OrderID, CustomerID, EmployeeID, OrderDate, TotalAmount, Status, PaymentDate, PaymentMethod, PaymentStatus, Title)
VALUES (2, 2, 2, '2025-09-05', 14.99, 'Completed', '2025-09-05', 'PayPal', 'Paid', 'Creed');

INSERT INTO ORDERS (OrderID, CustomerID, EmployeeID, OrderDate, TotalAmount, Status, PaymentDate, PaymentMethod, PaymentStatus, Title)
VALUES (3, 3, 3, '2025-09-10', 24.99, 'Completed', '2025-09-11', 'Debit', 'Paid', 'Spider-Man: Into the Spider-Verse');

-- ORDER_ITEMS
INSERT INTO ORDER_ITEMS (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES (1, 1, 101, 1, 69.99);

INSERT INTO ORDER_ITEMS (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES (2, 1, 201, 1, 19.99);

INSERT INTO ORDER_ITEMS (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES (3, 2, 202, 1, 14.99);

INSERT INTO ORDER_ITEMS (OrderItemID, OrderID, ProductID, Quantity, Price)
VALUES (4, 3, 203, 1, 24.99);

-- INVENTORY_RECEIVING
INSERT INTO INVENTORY_RECEIVING
(TransactionID, ProductID, TransactionDate, TransactionType, OrderID, Quantity, EmployeeID)
VALUES (2, 203, '2025-09-12', 'Return', 3, 1, 3);
