/*
	계정생성 DDL
    CREATE USER '계정아이디'@localhost identified by '비밀번호'; -> 내부 IP 접속 (host컴퓨터 서버에 원격 접속)
    CREATE USER '계정아이디'@% identified by '비밀번호'; -> 외부 IP 접속
		> create user 'junil'@localhost identified by 'root'; (계정생성하기)
        > grant all privileges on *.* to junil@localhost; (권한 부여)
        > flush privileges; 
        
	DCL(권한관련)
    1. GRANT(데이터베이스, 데이블 사용자 권한 부여)
		- GRANT 권한 TO 사용자 계정
        - GRANT 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@localhost -> 내부IP(현재pc에서만 접근 가능)
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@% -> 외부IP(다른 pc에서도 접근 가능)
			> GRANT ALL PRIVILEGES ON subquery_study.board_mst TO root@200.100.% -> 외부IP(해당 ip=200.100.를 포함하고있는 pc에서도 접근 가능)
            
    2. REVOKE(데이터베이스, 테이블 사용자 권한 회수)
		- REVOKE 권한 TO 사용자 계정
        - REVOKE 권한 ON 객체명(데이터베이스.테이블명) TO 사용자 계정
			> REVOKE insert, update, create ON *.* (모든 DB의 모든 table) TO root@localhost;(insert, update, create 권한 해제)
			> REVOKE ALL ON *.* TO root@localhost;(모든 권한 해제)
*/

select @@autocommit;
set autocommit = 1; /* 1이면 활성화, 0이면 비활성화 */