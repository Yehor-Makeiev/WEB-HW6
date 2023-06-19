SELECT s.fullname, sbj.name as sbj_name
FROM subjects sbj
LEFT JOIN students s ON s.id = grades.student_id
LEFT JOIN grades ON sbj.id = grades.subject_id
WHERE s.id = 10;