/*
	인덱스(INDEX)
    테이블의 동작속도(조회)를 높여주는 자료구조
*/

insert into delivery_mst
values
	(2212160001, '부산 동래구 교대역점'),
	(2212160002, '부산 동래구 교대역점'),
	(2212160003, '부산 동래구 교대역점'),
	(2212160004, '부산 동래구 교대역점');
    
select * from delivery_mst;
create index order_id on delivery_mst(`주문번호`); /* 복합키처럼 여러개를 한꺼번에도 가능 -> (`주문번호`,`배송지`) 문제출제 */
show index from delivery_mst;


