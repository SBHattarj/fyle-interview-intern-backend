-- Write query to get number of graded assignments for each student:
SELECT COUNT(*) FROM assignments WHERE assignments.state = 'GRADED' GROUP BY assignments.student_id ORDER BY assignments.student_id DESC;
