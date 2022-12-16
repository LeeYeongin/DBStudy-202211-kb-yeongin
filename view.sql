/*
	뷰(VIEW)
    자주 조회하는 select문을 저장하는 방법
*/
CREATE VIEW course_view /* 아래의 select문이 view로 생성 */
AS
    SELECT 
        cm.id as course_id,
        cm.subject_id,
        sjm.`subject` as subject_name,
        cm.student_id,
        stm.`name` as student_name,
        status_id
    FROM
        course_mst cm
		LEFT OUTER JOIN subject_mst sjm ON (sjm.id = cm.subject_id)
        LEFT OUTER JOIN student_mst stm ON (stm.id = cm.student_id);
        
drop view course_view; /* view 삭제 */
      
SELECT 
    *
FROM
    course_view
WHERE
    course_id > 5; /* 생성된 view는 하나의 테이블처럼 where조건문도 사용가능 */