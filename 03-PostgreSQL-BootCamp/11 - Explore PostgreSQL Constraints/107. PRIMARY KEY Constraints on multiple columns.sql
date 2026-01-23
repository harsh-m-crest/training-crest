-- 107. PRIMARY KEY Constraints on multiple columns 


CREATE TABLE t_grades (
	course_id varchar(100) NOT NULL,
	student_id varchar(100) NOT NULL,
	grade int NOT NULL,
	PRIMARY KEY (course_id,student_id)
);

SELECT * FROM t_grades;

INSERT INTO t_grades (course_id,student_id,grade) VALUES
('MATH','S1',50),
('CHEMISTRY','S1',70),
('ENGLSIH','S2',70),
('PHYSICS','S1',80)

DROP TABLE t_grades;

ALTER TABLE t_grades
DROP CONSTRAINT t_grades_pkey;


ALTER TABLE t_grades
	ADD CONSTRAINT t_grades_coruse_id_session_id_pkey 
		PRIMARY KEY  (course_id,student_id)

 
