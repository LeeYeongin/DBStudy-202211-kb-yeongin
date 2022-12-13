INSERT INTO 
	board_mst
VALUES
	(0, '제목1', '게시글 내용1', 0, 1),
	(0, '제목2', '게시글 내용2', 0, 1),
	(0, '제목3', '게시글 내용3', 0, 1),
	(0, '제목1', '게시글 내용1', 0, 2),
	(0, '제목2', '게시글 내용2', 0, 2),
	(0, '제목3', '게시글 내용3', 0, 2),
	(0, '제목4', '게시글 내용4', 0, 1),
	(0, '제목5', '게시글 내용5', 0, 1),
	(0, '제목6', '게시글 내용6', 0, 1),
	(0, '제목4', '게시글 내용4', 0, 2),
	(0, '제목5', '게시글 내용5', 0, 2),
	(0, '제목6', '게시글 내용6', 0, 2);

SELECT
	*,
	(SELECT COUNT(1) FROM board_mst bm2 WHERE bm2.writer_id = bm.writer_id) AS writer_count
FROM
	board_mst bm;

/* 
	select문에 subquery를 작성시 행이 너무 많으면 실행횟수가 너무 많아질 수 있음
	그래서 주로 from에 subquery 작성
	from에 작성할 경우 한번의 select문 실행을 통해 테이블 생성 -> join하여 사용
*/
	
SELECT
	bm.id,
	bm.title,
	bm.content,
	bm.read_count,
	bm.writer_id,
	wc.writer_count 
FROM
	board_mst bm
	LEFT OUTER JOIN (SELECT
		writer_id,
		COUNT(1) AS writer_count 
	FROM 
		board_mst
	GROUP BY writer_id) wc ON(wc.writer_id = bm.writer_id);

SET profiling = 1;
SHOW PROFILES;
