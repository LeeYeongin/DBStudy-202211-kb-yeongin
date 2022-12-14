/* 
	uion을 사용하기 위해서 칼럼의 형식을 똑같이 만들어줘야함 
	union은 중복제거
    union all은 중복 제거 X
*/
SELECT 
    name,
    email,
    0 as score
FROM
    user_dtl 
where
	name = '김준일'
UNION
SELECT 
    name,
	null as email, /* 형식을 같게해주기 위해 null값이 들어있는 칼럼 생성 */
    score
FROM
    score_mst
where
	score > 80; /* where문을 실행 한 뒤 조건에 맞는 행들만 union */
    
SELECT 
    name
FROM
    user_dtl 
UNION all
SELECT 
    name
FROM
    score_mst;