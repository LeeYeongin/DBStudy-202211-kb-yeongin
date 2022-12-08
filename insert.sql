
/* 
C(reate)R(ead)U(pdate)D(elete)

INSERT (추가) - C
SELECT (조회) - R
UPDATE (수정) - U
DELETE (삭제) - D
*/


INSERT INTO product_mst
/*(id, product_name, product_price) Values의 3 컬럼의 개수와 순서가 같으면 생략가능*/
VALUES
(0,'스타벅스 블랙 머그컵2',15000),
(0,'스타벅스 화이트 머그컵2',20000),
(0,'스타벅스 블루 머그컵2',25000);

SELECT
	id,
	product_name,
	product_price 
FROM 
	product_mst;
	
INSERT INTO student_mst
VALUES
(0, '임지현', 1, 80),
(0, '신경수', 2, 90),
(0, '고희주', 3, 75),
(0, '문승주', 1, 85),
(0, '장건녕', 2, 95),
(0, '박수현', 3, 90),
(0, '황석민', 1, 80),
(0, '박준현', 2, 85),
(0, '이승아', 3, 90),
(0, '김수현', 1, 75);

/* WHERE */
SELECT	/* 원하는 컬럼만 골라서 볼 수 있음, 컬럼 순서 변경도 가능*/
	id,
	`name`, /*쿼리에서 사용하고있는 이름은 백쿼터(` `)를 사용하여 구분*/
	student_year,
	score
FROM
	student_mst
WHERE
	student_year = 1 AND score > 80 
	OR (student_year = 3 AND score = 75); /* equal(=) , AND , OR 사용가능*/	
	
/* LIKE */
SELECT
	id,
	`name`, 
	student_year,
	score
FROM
	student_mst
WHERE
	`name` LIKE '%수%'
	AND `name` NOT LIKE '%수';
	
/* IN */
SELECT
	id,
	`name`, 
	student_year,
	score
FROM
	student_mst
WHERE
	student_year NOT IN(1, 2);

/* BETWEEN */
SELECT
	id,
	`name`, 
	student_year,
	score
FROM
	student_mst
WHERE
	score NOT BETWEEN 80 AND 90;
	

SELECT
	id,
	`name`, 
	student_year,
	score
FROM
	student_mst
WHERE
	`name` IS not NULL;

	

