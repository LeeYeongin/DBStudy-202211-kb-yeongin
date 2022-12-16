/*
	TCL
    1. COMMIT		- 트랜잭션 확정
    2. ROLLBACK		- 트랜잭션 취소 (되돌리기)
    3. SAVEPOINT	- 중간지점 저장
*/
set autocommit = 0;
select @@autocommit;

create database `transaction_study`;
use transaction_study;

/* DDL은 transaction과 상관X */
create table `transaction_study`.`emp_mst` (
	`id` INT not null auto_increment,
    `name` varchar(15) default null,
    primary key (`id`)
);

select @@autocommit;

/* transaction을 실행 후 commit 실행 */
start transaction;	/* transaction의 시작점을 알려줘야함 */
savepoint p1;
insert into emp_mst
values
	(0, '김준일'),
	(0, '신경수'),
	(0, '고희주'),
	(0, '장건녕');
select * from emp_mst;

savepoint p2;
    
update emp_mst
set
	`name` = '문승주'
where
	id = 5;
select * from emp_mst;
    
rollback to p2; /* to savepoint가 없으면 transaction 시작점으로 돌아감 */
select * from emp_mst;
    
rollback to p1; /* insert하기 전으로 되돌아감 */
select * from emp_mst;

commit; /* transcation 마무리 -> commit후에는 savepoint가 사라져 rollback할 수 없음*/


