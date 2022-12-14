insert into
	user_mst
values
	(0, 'test'),
    (0, 'test2');
    
select * from user_mst;

/* 주어진 데이터가 아이디(username) 밖에 없을 때(test, test2) */
select * from user_mst;
select * from user_dtl;

select
	*
from
	user_dtl
where
	id = (select id from user_mst where username = 'test');
    
select
	*
from
	user_dtl
where
	id in (select id from user_mst where username like '%test%');
    
SELECT 
    *
FROM
    user_dtl ud
	LEFT OUTER JOIN user_mst um ON (um.id = ud.id)
WHERE
    um.username = 'test';
    

/* 원하는 컬럼을 만들어서 조회하는 방법 */
select
	'아이디' as username,
    12 as `month`,
    14 as `day`;

select
	*,
	'테스트' as test
from
	user_dtl;

insert into
	user_mst
values
	(0, 'aaa'),
	(0, 'bbb'),
	(0, 'ccc'),
	(0, 'ddd'),
	(0, 'eee');
    
select
	*,
    ifnull(name, 1) as flag, /* A가 NULL이면 B를 반환, NULL이 아니면 A를 반환 */
    nullif(name, null) as flag2, /* A와 B가 같으면 NULL을 반환, 같지 않으면 A를 반환 */
    case 
		when ifnull(name, 1) = 1 then  1
		when ifnull(name, 1) = 2 then  2
		when ifnull(name, 1) = 3 then  3
		when ifnull(name, 1) = 4 then  4
        else 0
	end as flag3,
    if(name is null, 1, 0) as flag4 /* 조건이 true면 1, false면 0 */
from
	user_dtl;
    
    