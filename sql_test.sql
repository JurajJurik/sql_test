--Úloha 1
SELECT books.name
FROM books
JOIN authors ON authors.id = books.author_id
WHERE sold_copies > 10 AND authors.name = 'Lehotkai'

--Úloha 2

DROP PROCEDURE everyYear;


DELIMITER $$
CREATE PROCEDURE everyYear()
BEGIN
	DECLARE x  INT;
        
	SET x = 2016;

	loop_label:  LOOP
		IF  x = 2022 THEN 
			LEAVE  loop_label;
		END  IF;
                    
		SET  x = x + 1;
                    SELECT books.author_id, authors.name, SUM(books.sold_copies) as 'Sold Copies'
                    FROM books
                    JOIN authors ON authors.id = books.author_id
                    WHERE year = x
                    GROUP BY author_id
                    HAVING SUM(books.sold_copies)>100
                    ORDER BY SUM(books.sold_copies) DESC;
	END LOOP;
END$$

DELIMITER ;

CALL everyYear;

--Úloha 3

DROP TABLE IF EXISTS `library`;
CREATE TABLE `library` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author` varchar(30),
  `sold_copies` int(11),
  `book` varchar(30),
  PRIMARY KEY (`id`)
);

DROP PROCEDURE topThree;


DELIMITER $$
CREATE PROCEDURE topThree()
BEGIN
	DECLARE x  INT;

	SET x = 0;


	loop_label:  LOOP
		IF  x = 5 THEN 
			LEAVE  loop_label;
		END  IF;
                    
		SET  x = x + 1;
                INSERT INTO library (author, sold_copies, book)                     
                SELECT authors.name, books.sold_copies, books.name
                FROM books
                JOIN authors ON authors.id = books.author_id
                WHERE author_id = x AND authors.name LIKE 'L%' AND year = 2022                    
                ORDER BY sold_copies DESC
                LIMIT 3;
	END LOOP;
END$$

DELIMITER ;

CALL topThree;