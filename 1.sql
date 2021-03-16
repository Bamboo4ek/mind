USE Prodaga
CREATE TABLE product (
kod INT PRIMARY KEY,
nazvanie TEXT
);

INSERT INTO product
VALUES
(1, 'Vargan'),
(2, 'Gitara P7009'),
(3, 'Kapodastr'),
(4, 'Gitara D8976');

CREATE TABLE categories (
kod INT PRIMARY KEY,
nazvanie TEXT
);

INSERT INTO categories
VALUES
(1, 'Derevo'),
(2, 'Plastik'),
(3, 'Strunnoe'),
(4, 'Duhovoe'),
(5, 'Udarnoe');

CREATE TABLE relationship_cp(
p_kod INT FOREIGN KEY REFERENCES product(kod),
c_kod INT FOREIGN KEY REFERENCES categories(kod),
PRIMARY KEY (p_kod, c_kod)
);

INSERT INTO relationship_cp
VALUES
(2, 2),
(2, 3),
(4, 3),
(4, 1);

SELECT p.nazvanie as "Imya producta", c.nazvanie as "Categoria"
FROM product p
LEFT JOIN relationship_cp cp
ON p.kod = cp.p_kod
LEFT JOIN categories c
ON cp.c_kod = c.kod;