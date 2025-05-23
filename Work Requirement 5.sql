-- Table Definitions 

CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    birth_date TEXT,
    nationality TEXT
);

CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title TEXT NOT NULL,
    isbn TEXT,
    publish_year INTEGER
);

CREATE TABLE Quotes (
    quote_id INTEGER PRIMARY KEY,
    quote_text TEXT NOT NULL,
    author_id INTEGER,
    book_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- Insert Statements

-- Authors
INSERT INTO Authors (name, birth_date, nationality) VALUES
('George Orwell', '1903-06-25', 'British'),
('Jane Austen', '1775-12-16', 'British'),
('Mark Twain', '1835-11-30', 'American'),
('Haruki Murakami', '1949-01-12', 'Japanese'),
('Toni Morrison', '1931-02-18', 'American');

-- Books
INSERT INTO Books (title, isbn, publish_year) VALUES
('1984', '9780451524935', 1949),
('Pride and Prejudice', '9780141439518', 1813),
('Adventures of Huckleberry Finn', '9780486280615', 1884),
('Kafka on the Shore', '9781400079278', 2002),
('Beloved', '9781400033413', 1987),
('Animal Farm', '9780451526342', 1945),
('Norwegian Wood', '9780375704024', 1987),
('Emma', '9780141439587', 1815),
('The Adventures of Tom Sawyer', '9780486400778', 1876),
('Song of Solomon', '9781400033420', 1977);

-- Quotes
INSERT INTO Quotes (quote_text, author_id, book_id) VALUES
("Big Brother is watching you.", 1, 1),
("All animals are equal, but some animals are more equal than others.", 1, 6),
("It is a truth universally acknowledged...", 2, 2),
("There is no charm equal to tenderness of heart.", 2, 8),
("The man who does not read has no advantage...", 3, 3),
("Travel is fatal to prejudice...", 3, 9),
("Pain is inevitable. Suffering is optional.", 4, 4),
("Memories warm you up from the inside.", 4, 4),
("Love is a battlefield.", 5, 5),
("Definitions belong to the definers, not the defined.", 5, 10),
("Freedom is the freedom to say that two plus two make four.", 1, 1),
("Until they become conscious they will never rebel.", 1, 1),
("Vanity and pride are different things.", 2, 2),
("To be fond of dancing was a certain step towards falling in love.", 2, 8),
("The lack of money is the root of all evil.", 3, 9),
("Don't go around saying the world owes you a living.", 3, 3),
("If you remember me, then I don’t care if everyone else forgets.", 4, 7),
("In dreams, you don't need to make any distinctions.", 4, 4),
("You are your best thing.", 5, 5),
("Love is or it ain't. Thin love ain't love at all.", 5, 10);

--Select Statements

SELECT b.title, COUNT(q.quote_id) AS quote_count
FROM Books b
LEFT JOIN Quotes q ON b.book_id = q.book_id
GROUP BY b.book_id;

SELECT a.name, COUNT(q.quote_id) AS quote_count
FROM Authors a
LEFT JOIN Quotes q ON a.author_id = q.author_id
GROUP BY a.author_id;

SELECT q.quote_text, a.name AS author_name
FROM Quotes q
JOIN Books b ON q.book_id = b.book_id
JOIN Authors a ON q.author_id = a.author_id
WHERE b.title = '1984';

SELECT q.quote_text, b.title AS book_title
FROM Quotes q
JOIN Authors a ON q.author_id = a.author_id
JOIN Books b ON q.book_id = b.book_id
WHERE a.name = 'Mark Twain';
