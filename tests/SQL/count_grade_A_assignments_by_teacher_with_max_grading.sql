-- Write query to find the number of grade A's given by the teacher who has graded the most assignments
SELECT grade_a_count, MAX(count) FROM (SELECT COUNT(CASE WHEN assignments.grade = 'A' THEN 1 ELSE NULL END) as grade_a_count, COUNT(*) as count FROM assignments WHERE assignments.state = 'GRADED' GROUP BY assignments.Teacher_id);
